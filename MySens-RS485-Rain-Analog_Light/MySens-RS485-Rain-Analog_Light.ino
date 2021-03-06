

#define MY_NODE_ID 121

// Test OK with MySensors-HM-easy-PCB-RFM-CC1101-RS485-NRF\1B_Standard-RJ45 an Pro-Mini

// Enable and select radio type attached
//#define MY_RADIO_NRF24
//#define MY_RADIO_NRF5_ESB
//#define MY_RADIO_RFM69
//#define MY_RADIO_RFM95

// Enable debug prints to serial monitor
//#define MY_DEBUG

// Enable RS485 transport layer
#define MY_RS485

// Define this to enables DE-pin management on defined pin
#define MY_RS485_DE_PIN 2

// Set RS485 baud rate to use
#define MY_RS485_BAUD_RATE 19200


// Enable this if RS485 is connected to a hardware serial port
#define MY_RS485_HWSERIAL Serial
#define MY_SPLASH_SCREEN_DISABLED
#define MY_TRANSPORT_WAIT_READY_MS 3000



#include <MySensors.h>
#include <BH1750.h>
#include <Wire.h>

#define CHILD_ID_RAIN 0
#define RAIN_SENSOR_ANALOG_PIN 0

#define CHILD_ID_LIGHT 1
BH1750 lightSensor;




uint32_t SLEEP_TIME = 15000; // Sleep time between reads (in milliseconds)

MyMessage rain(CHILD_ID_RAIN, V_RAINRATE);
int lastRainLevel;
int lastRainAnalog;

MyMessage light(CHILD_ID_LIGHT, V_LIGHT_LEVEL);
uint16_t lastlux;




void setup()  
{ 
  lightSensor.begin();
}



void presentation()
{
  // Send the sketch version information to the gateway and Controller
  sendSketchInfo("Analog-Rain Light Sensor", "0.2");

  // Register all sensors to gateway (they will be created as child devices)
  present(CHILD_ID_RAIN, S_RAIN);
  present(CHILD_ID_LIGHT, S_LIGHT_LEVEL);

}

void loop()
{
  //int16_t rainLevel = (1023-analogRead(RAIN_SENSOR_ANALOG_PIN))/10.23;
  int16_t rainLevel = analogRead(RAIN_SENSOR_ANALOG_PIN);
  Serial.println(rainLevel);
    if (rainLevel != lastRainLevel) {
    send(rain.set(rainLevel));
    lastRainLevel = rainLevel;
  }

  uint16_t lux = lightSensor.readLightLevel();// Get Lux value
  Serial.println(lux);
  if (lux != lastlux) {
      send(light.set(lux));
      lastlux = lux;
  }
  
  sleep(SLEEP_TIME);
}
