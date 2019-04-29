

#define MY_NODE_ID 101

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

#define CHILD_ID_RAIN 0
#define RAIN_SENSOR_ANALOG_PIN 0

uint32_t SLEEP_TIME = 500; // Sleep time between reads (in milliseconds)

MyMessage msg(CHILD_ID_RAIN, V_RAINRATE);
int lastRainLevel;
int lastRainAnalog;


void presentation()
{
  // Send the sketch version information to the gateway and Controller
  sendSketchInfo("Rain Sensor Analog", "0.1");

  // Register all sensors to gateway (they will be created as child devices)
  present(CHILD_ID_RAIN, S_RAIN);
}

void loop()
{
  //int16_t rainLevel = (1023-analogRead(RAIN_SENSOR_ANALOG_PIN))/10.23;
  int16_t rainLevel = analogRead(RAIN_SENSOR_ANALOG_PIN);
  Serial.println(rainLevel);
    if (rainLevel != lastRainLevel) {
    send(msg.set(rainLevel));
    lastRainLevel = rainLevel;
  }
  sleep(SLEEP_TIME);
}
