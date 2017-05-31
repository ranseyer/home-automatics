#include <MySensor.h>
#include <SPI.h>
#include <MySigningAtsha204.h>

MyTransportNRF24 radio;
MyHwATMega328 hw;
MySigningAtsha204 signer(true);

const int RELAY[] = {5, 6, 7, 3};
#define NUMBER_OF_RELAYS 4
#define RELAY_ON 1
#define RELAY_OFF 0

MySensor gw(radio, hw, signer);

void setup()  
{   
  gw.begin(incomingMessage, AUTO, true);
  gw.sendSketchInfo("Relay", "1.0");
  for (int sensor=1, pin=0; sensor<=NUMBER_OF_RELAYS;sensor++, pin++) {
    gw.present(sensor, S_LIGHT);
    pinMode(RELAY[pin], OUTPUT);   
    digitalWrite(RELAY[pin], gw.loadState(sensor)?RELAY_ON:RELAY_OFF);
  }
}

void loop() 
{
  gw.process();
}

void incomingMessage(const MyMessage &message) {
   if (message.type==V_LIGHT) {
     // Change relay state
     digitalWrite(RELAY[message.sensor-1], message.getBool()?RELAY_ON:RELAY_OFF);
     gw.saveState(message.sensor, message.getBool());
     Serial.print("Incoming change for sensor:");
     Serial.print(message.sensor);
     Serial.print(", New status: ");
     Serial.println(message.getBool());
   } 
}
