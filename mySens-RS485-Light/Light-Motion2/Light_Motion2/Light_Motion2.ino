/**
 * The MySensors Arduino library handles the wireless radio link and protocol
 * Created by Henrik Ekblad <henrik.ekblad@mysensors.org>
 * Copyright (C) 2013-2015 Sensnology AB
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * version 2 as published by the Free Software Foundation.
 *
 *******************************
 *
 * REVISION HISTORY
 * Version 1.0 - idefix
 * 
 * DESCRIPTION
 * Arduino BH1750FVI Light sensor
 * communicate using I2C Protocol
 * this library enable 2 slave device addresses
 * Main address  0x23
 * secondary address 0x5C
 * connect the sensor as follows :
 *
 *   VCC  >>> 5V
 *   Gnd  >>> Gnd
 *   ADDR >>> NC or GND  
 *   SCL  >>> A5
 *   SDA  >>> A4
 * http://www.mysensors.org/build/light
 */



// Enable debug prints to serial monitor
#define MY_DEBUG
// Enable RS485 transport layer
#define MY_RS485
// Define this to enables DE-pin management on defined pin
#define MY_RS485_DE_PIN 2
// Set RS485 baud rate to use
#define MY_RS485_BAUD_RATE 9600
#define MY_NODE_ID 102

#include <SPI.h>
#include <MySensors.h>  
#include <BH1750.h>
#include <Wire.h>


#define CHILD_ID_LIGHT 0
#define CHILD_ID_Rain 1   // Id of the sensor child
unsigned long SLEEP_TIME = 30000; // Sleep time between reads (in milliseconds)
#define DIGITAL_INPUT_SENSOR 3   // The digital input you attached your rain sensor.  (Only 2 and 3 generates interrupt!)



BH1750 lightSensor;
// V_LIGHT_LEVEL should only be used for uncalibrated light level 0-100%.
// If your controller supports the new V_LEVEL variable, use this instead for
// transmitting LUX light level.
MyMessage msgLight(CHILD_ID_LIGHT, V_LIGHT_LEVEL);
uint16_t lastlux;
// Initialize motion message
MyMessage msgRain(CHILD_ID_Rain, V_RAIN);



void setup()  
{ 
  lightSensor.begin();
  pinMode(DIGITAL_INPUT_SENSOR, INPUT);      // sets the motion sensor digital pin as input
}

void presentation()  {
  // Send the sketch version information to the gateway and Controller
  sendSketchInfo("Light Rain Sensor", "0.1.0");

  // Register all sensors to gateway (they will be created as child devices)
  present(CHILD_ID_LIGHT, S_LIGHT_LEVEL);
  present(CHILD_ID_Rain, S_RAIN);

}

void loop()      
{     
  uint16_t lux = lightSensor.readLightLevel();// Get Lux value
  Serial.println(lux);
  if (lux != lastlux) {
      send(msgLight.set(lux));
      lastlux = lux;
  }


  // Read digital motion value
  bool tripped = digitalRead(DIGITAL_INPUT_SENSOR) == HIGH;

  Serial.println(tripped);
  send(msgRain.set(tripped?"0":"1"));  // Send tripped value to gw

// wie richtig ???
//  // Sleep until interrupt comes in on motion sensor. Send update every two minute.
//  sleep(digitalPinToInterrupt(DIGITAL_INPUT_SENSOR), CHANGE, SLEEP_TIME);

sleep(digitalPinToInterrupt(DIGITAL_INPUT_SENSOR), CHANGE, SLEEP_TIME);
//  sleep(SLEEP_TIME);
}
