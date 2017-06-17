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
 * Version 1.0 - Henrik EKblad
 *
 * DESCRIPTION
 * Example sketch showing how to measue light level using a LM393 photo-resistor
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

#define MY_NODE_ID 119


#include <MySensors.h>

#define CHILD_ID_LIGHT 0
#define LIGHT_SENSOR_ANALOG_PIN 0


unsigned long SLEEP_TIME = 10000; // Sleep time between reports (in milliseconds)
#define DIGITAL_INPUT_SENSOR 3   // The digital input you attached your motion sensor.  (Only 2 and 3 generates interrupt!)
#define CHILD_ID_Rain 1   // Id of the sensor child

//// Initialize motion message
//MyMessage msg(CHILD_ID, V_TRIPPED);
//MyMessage msg(CHILD_ID_LIGHT, V_LIGHT_LEVEL);
//int lastLightLevel;


// Initialize motion message
MyMessage msgRain(CHILD_ID_Rain, V_TRIPPED);
int lastLightLevel;
MyMessage msgLight(CHILD_ID_LIGHT, V_LIGHT_LEVEL);



void setup()
{
    pinMode(DIGITAL_INPUT_SENSOR, INPUT);      // sets the motion sensor digital pin as input
}



void presentation()
{
	// Send the sketch version information to the gateway and Controller
	sendSketchInfo("Light+Motion Sensor", "0.1");

	// Register all sensors to gateway (they will be created as child devices)
	present(CHILD_ID_LIGHT, S_LIGHT_LEVEL);

  // Register all sensors to gw (they will be created as child devices)
  present(CHILD_ID_Rain, S_MOTION);


}

void loop()
{
	int16_t lightLevel = (1023-analogRead(LIGHT_SENSOR_ANALOG_PIN))/10.23;
	Serial.println(lightLevel);
	if (lightLevel != lastLightLevel) {
		send(msgLight.set(lightLevel));
		lastLightLevel = lightLevel;


    // Read digital motion value
    bool tripped = digitalRead(DIGITAL_INPUT_SENSOR) == HIGH;

    Serial.println(tripped);
    send(msgRain.set(tripped?"1":"0"));  // Send tripped value to gw


	
	}
    //	sleep(SLEEP_TIME);
    // Sleep until interrupt comes in on motion sensor. Send update every two minute.
    sleep(digitalPinToInterrupt(DIGITAL_INPUT_SENSOR), CHANGE, SLEEP_TIME);

}




