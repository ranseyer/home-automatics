// Enable debug prints to serial monitor
#define MY_DEBUG
#define MY_DEBUG_LOCAL 
#define MY_TRANSPORT_WAIT_READY_MS 1000

#define MY_NODE_ID 22
// Enable and select radio type attached
//#define MY_RADIO_NRF24
//#define MY_RADIO_RFM69
// Enable RS485 transport layer
#define MY_RS485


// Define this to enables DE-pin management on defined pin
#define MY_RS485_DE_PIN 2
// Pin definition
const int lockPin = 4;         // (Digital 4) The pin that activates the relay/solenoid lock.

bool lockStatus;
String tagid = String();



// Set RS485 baud rate to use
#define MY_RS485_BAUD_RATE 38400

// Enable this if RS485 is connected to a hardware serial port
// Not possible with Arduino Nano !!
//#define MY_RS485_HWSERIAL Serial
#define RF_INIT_DELAY   125




#include <SPI.h>
#include <MySensors.h>  
#include <Wire.h>
#include <PN532_I2C.h>
#include <PN532.h>


// Add your valid rfid keys here. To find you your key just run sketch; hold your new RFID tag in fron ot the reader; 
// and copy the key from serial output of this sketch.
const uint8_t maxKeyLength = 7;
uint8_t validKeys[][maxKeyLength] = {
                    { 0xB3, 0xC6, 0xD9, 0x80, 0x00, 0x00, 0x00 },
                    { 0, 0, 0, 0, 0, 0, 0 },    // ADD YOUR KEYS HERE!
                    { 0, 0, 0, 0, 0, 0, 0 }};
int keyCount = sizeof validKeys / maxKeyLength; 


#define CHILD_ID_LOCK  1   // Id of the sensor child S_LOCK
#define CHILD_ID_WRONG 2   // Id of the sensor child S_DOOR
#define CHILD_ID_ALARM 3   // Id of the sensor child S_MOTION
#define CHILD_ID_TAGID 4   // Id of the sensor child S_IR
 

MyMessage  lockMsg(CHILD_ID_LOCK, V_LOCK_STATUS);
MyMessage  armMsg(CHILD_ID_WRONG, V_ARMED);
MyMessage  wrongMsg(CHILD_ID_ALARM, V_TRIPPED);
MyMessage  tagMsg(CHILD_ID_TAGID,  V_IR_RECEIVE);


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
  nfc.setPassiveActivationRetries(0x3); //Retries reading from CARD
  
  // configure board to read RFID tags
  nfc.SAMConfig();

  lockStatus = loadState(0);    // Read last lock status from eeprom
  setLockState(lockStatus, true); // Now set the last known state and send it to controller 
}

void presentation()  {
  sendSketchInfo("RFID Lock", "0.0.5");
  present(CHILD_ID_LOCK, S_LOCK);      delay(RF_INIT_DELAY);
  present(CHILD_ID_WRONG, S_DOOR);   delay(RF_INIT_DELAY);
  present(CHILD_ID_ALARM, S_MOTION);   delay(RF_INIT_DELAY);
  present(CHILD_ID_TAGID, S_IR);     delay(RF_INIT_DELAY);
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


    tagid=(""); //Start with an empty string!
    for (uint8_t i=0; i < currentKeyLength; i++) {
      tagid+=(String(key[i], HEX));
    }
    for (uint8_t i=currentKeyLength; i < maxKeyLength; i++) {
      tagid+=("00");
    }
    #ifdef MY_DEBUG_LOCAL    
        Serial.print("ID:"); Serial.println(tagid);
    #endif

    char *cidstr = new char[tagid.length() + 1];
    strcpy(cidstr, tagid.c_str());
    send(tagMsg.set(cidstr));  // Send id of the rfid-tag  to gw

    bool tripped = 1;
    send(wrongMsg.set(tripped?"1":"0"));  // Send tripped value to gw

    //V_IR_RECEIVE  33  This message contains a received IR-command S_IR
    //MyMessage  lockMsg(CHILD_ID_LOCK, V_LOCK_STATUS);
    //MyMessage  armMsg(CHILD_ID_WRONG, V_ARMED);
    //MyMessage  wrongMsg(CHILD_ID_ALARM, V_TRIPPED);
    //MyMessage  tagMsg(CHILD_TAGID, V_TRIPPED);

    bool valid = false;

/* Ab hier wäre dann nach dem Muster https://forum.mysensors.org/topic/2223/rfid-2-person-readout/2 umzubauen (einschl. Eingangsarray)*/
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
#ifdef MY_DEBUG
  if (state) 
     Serial.println("open lock");
  else
     Serial.println("close lock");
#endif
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

#ifdef MY_DEBUG
     // Write some debug info
     Serial.print("Incoming lock status:");
     Serial.println(message.getBool());
#endif
   } 
}
