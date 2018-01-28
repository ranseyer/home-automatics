/**
 * The MySensors Arduino library handles the wireless radio link and protocol
 * between your home built sensors/actuators and HA controller of choice.
 * The sensors forms a self healing radio network with optional repeaters. Each
 * repeater and gateway builds a routing tables in EEPROM which keeps track of the
 * network topology allowing messages to be routed to nodes.
 *
 * Created by Henrik Ekblad <henrik.ekblad@mysensors.org>
 * Copyright (C) 2013-2015 Sensnology AB
 * Full contributor list: https://github.com/mysensors/Arduino/graphs/contributors
 *
 * Documentation: http://www.mysensors.org
 * Support Forum: http://forum.mysensors.org
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * version 2 as published by the Free Software Foundation.
 *
 *******************************
 *
 * REVISION HISTORY
 * Version 1.0 - Henrik Ekblad
 * 
 * DESCRIPTION
 * RFID Lock sensor/actuator
 * 
 * Use RFID tag to lock/unlock a door or trigger a scene on your controller.
 * This example sketch allows you to add an optional relay or solenoid 
 * which can be activated/opened by RFID or controller.  
 *
 * Use the I2C wiring option for your RFID module and connect to the following Arduino pins.
 * 
 * RFID       Arduino
 * -----      -------
 * GND   ->   GND
 * VCC   ->   +5V
 * SCL   ->   A5
 * SDA   ->   A4
 * 
 * Use normal wiring for NRF24L01 radio
 * 
 * Attach a optional relay or solonoid lock to pin 4
 * http://www.mysensors.org/build/rfid 
 */

// Enable debug prints to serial monitor
#define MY_DEBUG 

// Enable and select radio type attached
//#define MY_RADIO_NRF24
#define MY_RADIO_RFM69
#define MY_IS_RFM69HW // Lokale Vorschriften beachten ! 
#define MY_RFM69_FREQUENCY RFM69_868MHZ
#define MY_RFM69_NEW_DRIVER
//#define MY_REPEATER_FEATURE
#define NODE_ID 133 

// If debugging is enabled, ignore issues with a missing gateway
#ifdef MY_DEBUG
  #define MY_TRANSPORT_WAIT_READY_MS 10000
#endif



#include <SPI.h>
#include <MySensors.h>  
#include <Wire.h>
#include <PN532_I2C.h>
#include <PN532.h>
#include <Bounce2.h>

// Add your valid rfid keys here. To find you your key just run sketch; hold your new RFID tag in fron ot the reader; 
// and copy the key from serial output of this sketch.
const uint8_t maxKeyLength = 7;
uint8_t validKeys[][maxKeyLength] = {
                    { 0xB3, 0xC6, 0xD9, 0x80, 0x00, 0x00, 0x00 },
                    { 0, 0, 0, 0, 0, 0, 0 },    // ADD YOUR KEYS HERE!
                    { 0, 0, 0, 0, 0, 0, 0 }};
int keyCount = sizeof validKeys / maxKeyLength; 

#define DOORBELL_PIN A0      // Arduino Digital I/O pin number for the doorbell button 
#define RELAY_PIN  4         // Arduino Digital I/O pin number for the relay 
#define RELAY_ON 1
#define RELAY_OFF 0

#define DOORBELL_CHILD_ID 0  //ID of the doorbell
#define SWITCH_CHILD_ID 1    // Id of the switch that will control doorbell sound


Bounce debouncer = Bounce();

MyMessage switchMsg(SWITCH_CHILD_ID, V_LIGHT);
MyMessage doorbellMsg(DOORBELL_CHILD_ID, V_TRIPPED);
unsigned int doorbellDelay = 1000; // interval at which to keep the doorbell button sensor triggered (milliseconds). This is used to stop people (kids) from pressing it too often
unsigned int ringTime = 400; //How long the doorbell relay is on (in milliseconds)
unsigned long doorbellMillis;  //Used to keep track of the last doorbell button press
unsigned long doorbellTimer;  //Used to keep track of doorbell ring time
byte doorbellPreviousVal;  //Used to keep track of doorbell button pressed state
boolean ringDoorbell;  //Used to initiate the ring doorbell if statement
boolean doorbellSound; //Used to keep track if the doorbell should sound or be silent.  Value recieved from doorbell on/off switch
boolean doorbellOff = true;  //Used to keep track of doorbell ring state



#define CHILD_ID 99   // Id of the sensor child
 
// Pin definition
const int lockPin = 4;         // (Digital 4) The pin that activates the relay/solenoid lock.
bool lockStatus;
MyMessage lockMsg(CHILD_ID, V_LOCK_STATUS);
PN532_I2C pn532i2c(Wire);
PN532 nfc(pn532i2c);
 
void setup() {
  
  pinMode(lockPin, OUTPUT);

  nfc.begin();
  uint32_t versiondata = nfc.getFirmwareVersion();
  if (! versiondata) {
    Serial.print("Couldn't find PN53x board");
    while (1); // halt
  }
  Serial.print("Found NFC chip PN5"); Serial.println((versiondata>>24) & 0xFF, HEX); 
  Serial.print("Firmware ver. "); Serial.print((versiondata>>16) & 0xFF, DEC); 
  Serial.print('.'); Serial.println((versiondata>>8) & 0xFF, DEC);
  // Set the max number of retry attempts to read from a card
  // This prevents us from waiting forever for a card, which is
  // the default behaviour of the PN532.
  nfc.setPassiveActivationRetries(0x3);
  
  // configure board to read RFID tags
  nfc.SAMConfig();

  lockStatus = loadState(0);    // Read last lock status from eeprom
  setLockState(lockStatus, true); // Now set the last known state and send it to controller 


//Door
 // Setup the button and activate internal pull-up
  pinMode(DOORBELL_PIN, INPUT_PULLUP);

  // After setting up the button, setup debouncer
  debouncer.attach(DOORBELL_PIN);
  debouncer.interval(5);

  // Make sure relays are off when starting up
  digitalWrite(RELAY_PIN, RELAY_OFF);
  // Then set relay pins in output mode
  pinMode(RELAY_PIN, OUTPUT);

  // Set doorbellSound to last known state (using eeprom storage)
  doorbellSound = loadState(SWITCH_CHILD_ID);

}

void presentation()  {
  sendSketchInfo("RFID Lock Doorbell", "0.0.1");
  present(CHILD_ID, S_LOCK);

//Door
    // Register all sensors to gw (they will be created as child devices)
  present(SWITCH_CHILD_ID, S_LIGHT);
  present(DOORBELL_CHILD_ID, S_MOTION);
  
}
 
void loop() {
  bool success;
  uint8_t key[] = { 0, 0, 0, 0, 0, 0, 0 };  // Buffer to store the returned UID
  uint8_t currentKeyLength;                        // Length of the UID (4 or 7 bytes depending on ISO14443A card type)

  
  // Wait for an ISO14443A type cards (Mifare, etc.).  When one is found
  // 'uid' will be populated with the UID, and uidLength will indicate
  // if the uid is 4 bytes (Mifare Classic) or 7 bytes (Mifare Ultralight)
  success = nfc.readPassiveTargetID(PN532_MIFARE_ISO14443A, &key[0], &currentKeyLength);
  
  if (success) {
    Serial.print("Found tag id: ");
    for (uint8_t i=0; i < currentKeyLength; i++) 
    {
      if (i>0) Serial.print(",");
      Serial.print("0x");Serial.print(key[i], HEX); 
    }
    for (uint8_t i=currentKeyLength; i < maxKeyLength; i++) 
    {
      Serial.print(",0x00"); 
    


//Door
    unsigned long currentMillis = millis();
  //Check to see if doorbell button was pushed.
  if (currentMillis - doorbellMillis > doorbellDelay) //used to stop doorbell from being pressed too frequently
  {
    debouncer.update();
    // Read doorbell button value
    byte doorbellDetect = !debouncer.read();//read, then reverse the value so it will send correct trigger state to controller

    if (doorbellDetect != doorbellPreviousVal)
    {
      //Serial.print("doorbellDetect Value: ");
      //Serial.println(doorbellDetect);
      send(doorbellMsg.set(doorbellDetect)); 
      if (doorbellDetect == 1)
      {
        ringDoorbell = true;
        doorbellTimer = currentMillis;
      }
      doorbellMillis = currentMillis;
      doorbellPreviousVal = doorbellDetect;
    }
  }

  if (ringDoorbell)
  {
    if (doorbellSound)
    {
      if (doorbellOff)
      {
        digitalWrite(RELAY_PIN, RELAY_ON);
        //Serial.println("Doorbell sounded.");
        doorbellOff = false;
      }
      else
      {
        if (currentMillis - doorbellTimer > ringTime)
        {
          ringDoorbell = false;
          digitalWrite(RELAY_PIN, RELAY_OFF);
          //Serial.println("Doorbell off.");
          doorbellOff = true;
        }
      }
    }
  }
    
    
    }


    Serial.println("");

    bool valid = false;
    // Compare this key to the valid once registered here in sketch 
    for (int i=0;i<keyCount && !valid;i++) {
      for (int j=0;j<currentKeyLength && !valid;j++) {
        if (key[j] != validKeys[i][j]) {
          break;
        }
        if (j==currentKeyLength-1) {
          valid = true;
        }
      }
    }
    if (valid) {
      // Switch lock status
      setLockState(!lockStatus, true);       
    }
    
    // Wait for card/tag to leave reader    
    while(nfc.readPassiveTargetID(PN532_MIFARE_ISO14443A, &key[0], &currentKeyLength));
  } 
} 
 
 
 
// Unlocks the door.
void setLockState(bool state, bool doSend){
  if (state) 
     Serial.println("open lock");
  else
     Serial.println("close lock");
  if (doSend)
    send(lockMsg.set(state));
  digitalWrite(lockPin, state);
  saveState(0,state);
  lockStatus = state;
}
 
void receive(const MyMessage &message) {
  // We only expect one type of message from controller. But we better check anyway.
  if (message.type==V_LOCK_STATUS) {
     // Change relay state
     setLockState(message.getBool(), false); 
  
     // Write some debug info
     Serial.print("Incoming lock status:");
     Serial.println(message.getBool());
   } 



//Door
    // We only expect one type of message from controller. But we better check anyway.
    if (message.isAck()) {
      Serial.println("This is an ack from gateway");
    }

    if (message.type == V_LIGHT) {
      // Change relay state
      doorbellSound = message.getBool();
      // Store state in eeprom
      saveState(SWITCH_CHILD_ID, doorbellSound);

      // Write some debug info
      Serial.print("Incoming change for sensor:");
      Serial.print(message.sensor);
      Serial.print(", New status: ");
      Serial.println(message.getBool());
    }

}


