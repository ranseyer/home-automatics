
// Enable debug prints to serial monitor
#define MY_DEBUG

// Enable RS485 transport layer
#define MY_RS485

// Define this to enables DE-pin management on defined pin
#define MY_RS485_DE_PIN 2

// Set RS485 baud rate to use
#define MY_RS485_BAUD_RATE 38400
#define MY_NODE_ID 110
//#define MY_PARENT_NODE_ID 100             //To set a fixed parent for this node



// Enable and select radio type attached
//#define MY_RADIO_NRF24
//#define MY_RADIO_RFM69


#includehttp://www.ti.com/lit/ds/symlink/lm1117.pdf <SPI.h>
#include <MySensors.h>  
#include <Wire.h>

// BME280 libraries and variables
// Bosch BME280 Embedded Adventures MOD-1022 weather multi-sensor Arduino code
// Written originally by Embedded Adventures
// https://github.com/embeddedadventures/BME280
#include <BME280_MOD-1022.h>

#define BARO_CHILD 0
#define TEMP_CHILD 1
#define HUM_CHILD 2

long interval = 300000;           // interval at which to send (milliseconds)
long previousMillis = interval;        // will store last time data was sent

const float ALTITUDE = 135; // <-- adapt this value to your location's altitude (in m). Use your smartphone GPS to get an accurate value!

const char *weather[] = { "stable", "sunny", "cloudy", "unstable", "thunderstorm", "unknown" };
enum FORECAST
{
  STABLE = 0,     // "Stable Weather Pattern"
  SUNNY = 1,      // "Slowly rising Good Weather", "Clear/Sunny "
  CLOUDY = 2,     // "Slowly falling L-Pressure ", "Cloudy/Rain "
  UNSTABLE = 3,   // "Quickly rising H-Press",     "Not Stable"
  THUNDERSTORM = 4, // "Quickly falling L-Press",    "Thunderstorm"
  UNKNOWN = 5     // "Unknown (More Time needed)
};


const int LAST_SAMPLES_COUNT = 5;
float lastPressureSamples[LAST_SAMPLES_COUNT];


// this CONVERSION_FACTOR is used to convert from Pa to kPa in the forecast algorithm
// get kPa/h by dividing hPa by 10 
#define CONVERSION_FACTOR (1.0/10.0)

int minuteCount = 0;
bool firstRound = true;
// average value is used in forecast algorithm.
float pressureAvg;
// average after 2 hours is used as reference value for the next iteration.
float pressureAvg2;

float dP_dt;
boolean metric;
MyMessage tempMsg(TEMP_CHILD, V_TEMP);
MyMessage humMsg(HUM_CHILD, V_HUM);
MyMessage pressureMsg(BARO_CHILD, V_PRESSURE);
MyMessage forecastMsg(BARO_CHILD, V_FORECAST);

//Light
#define CHILD_ID_LIGHT 3
#define LIGHT_SENSOR_ANALOG_PIN A0
MyMessage light_Msg(CHILD_ID_LIGHT, V_LIGHT_LEVEL);


float getLastPressureSamplesAverage()
{
  float lastPressureSamplesAverage = 0;
  for (int i = 0; i < LAST_SAMPLES_COUNT; i++)
  {
    lastPressureSamplesAverage += lastPressureSamples[i];
  }
  lastPressureSamplesAverage /= LAST_SAMPLES_COUNT;

  return lastPressureSamplesAverage;
}


// Algorithm found here
// http://www.freescale.com/files/sensors/doc/app_note/AN3914.pdf
// Pressure in hPa -->  forecast done by calculating kPa/h
int sample(float pressure)
{
  // Calculate the average of the last n minutes.
  int index = minuteCount % LAST_SAMPLES_COUNT;
  lastPressureSamples[index] = pressure;

  minuteCount++;
  if (minuteCount > 185)
  {
    minuteCount = 6;
  }

  if (minuteCount == 5)
  {
    pressureAvg = getLastPressureSamplesAverage();
  }
  else if (minuteCount == 35)
  {
    float lastPressureAvg = getLastPressureSamplesAverage();
    float change = (lastPressureAvg - pressureAvg) * CONVERSION_FACTOR;
    if (firstRound) // first time initial 3 hour
    {
      dP_dt = change * 2; // note this is for t = 0.5hour
    }
    else
    {
      dP_dt = change / 1.5; // divide by 1.5 as this is the difference in time from 0 value.
    }
  }
  else if (minuteCount == 65)
  {
    float lastPressureAvg = getLastPressureSamplesAverage();
    float change = (lastPressureAvg - pressureAvg) * CONVERSION_FACTOR;
    if (firstRound) //first time initial 3 hour
    {
      dP_dt = change; //note this is for t = 1 hour
    }
    else
    {
      dP_dt = change / 2; //divide by 2 as this is the difference in time from 0 value
    }
  }
  else if (minuteCount == 95)
  {
    float lastPressureAvg = getLastPressureSamplesAverage();
    float change = (lastPressureAvg - pressureAvg) * CONVERSION_FACTOR;
    if (firstRound) // first time initial 3 hour
    {
      dP_dt = change / 1.5; // note this is for t = 1.5 hour
    }
    else
    {
      dP_dt = change / 2.5; // divide by 2.5 as this is the difference in time from 0 value
    }
  }
  else if (minuteCount == 125)
  {
    float lastPressureAvg = getLastPressureSamplesAverage();
    pressureAvg2 = lastPressureAvg; // store for later use.
    float change = (lastPressureAvg - pressureAvg) * CONVERSION_FACTOR;
    if (firstRound) // first time initial 3 hour
    {
      dP_dt = change / 2; // note this is for t = 2 hour
    }
    else
    {
      dP_dt = change / 3; // divide by 3 as this is the difference in time from 0 value
    }
  }
  else if (minuteCount == 155)
  {
    float lastPressureAvg = getLastPressureSamplesAverage();
    float change = (lastPressureAvg - pressureAvg) * CONVERSION_FACTOR;
    if (firstRound) // first time initial 3 hour
    {
      dP_dt = change / 2.5; // note this is for t = 2.5 hour
    }
    else
    {
      dP_dt = change / 3.5; // divide by 3.5 as this is the difference in time from 0 value
    }
  }
  else if (minuteCount == 185)
  {
    float lastPressureAvg = getLastPressureSamplesAverage();
    float change = (lastPressureAvg - pressureAvg) * CONVERSION_FACTOR;
    if (firstRound) // first time initial 3 hour
    {
      dP_dt = change / 3; // note this is for t = 3 hour
    }
    else
    {
      dP_dt = change / 4; // divide by 4 as this is the difference in time from 0 value
    }
    pressureAvg = pressureAvg2; // Equating the pressure at 0 to the pressure at 2 hour after 3 hours have past.
    firstRound = false; // flag to let you know that this is on the past 3 hour mark. Initialized to 0 outside main loop.
  }

  int forecast = UNKNOWN;
  if (minuteCount < 35 && firstRound) //if time is less than 35 min on the first 3 hour interval.
  {
    forecast = UNKNOWN;
  }
  else if (dP_dt < (-0.25))
  {
    forecast = THUNDERSTORM;
  }
  else if (dP_dt > 0.25)
  {
    forecast = UNSTABLE;
  }
  else if ((dP_dt > (-0.25)) && (dP_dt < (-0.05)))
  {
    forecast = CLOUDY;
  }
  else if ((dP_dt > 0.05) && (dP_dt < 0.25))
  {
    forecast = SUNNY;
  }
  else if ((dP_dt >(-0.05)) && (dP_dt < 0.05))
  {
    forecast = STABLE;
  }
  else
  {
    forecast = UNKNOWN;
  }

  // uncomment when debugging
  //Serial.print(F("Forecast at minute "));
  //Serial.print(minuteCount);
  //Serial.print(F(" dP/dt = "));
  //Serial.print(dP_dt);
  //Serial.print(F("kPa/h --> "));
  //Serial.println(weather[forecast]);

  return forecast;
}


void setup() {
  metric = getControllerConfig().isMetric;  // was getConfig().isMetric; before MySensors v2.1.1
  Wire.begin(); // Wire.begin(sda, scl)
  // use the 1.1 V internal reference
  #if defined(__AVR_ATmega2560__)
  analogReference(INTERNAL1V1);
  #else
  analogReference(INTERNAL);
  #endif
}

void presentation()  {
  // Send the sketch version information to the gateway and Controller
  sendSketchInfo("WeatherStation #20", "1.0");

  // Register sensors to gw (they will be created as child devices)
  present(BARO_CHILD, S_BARO);
  present(TEMP_CHILD, S_TEMP);
  present(HUM_CHILD, S_HUM);
  present(CHILD_ID_LIGHT, S_LIGHT_LEVEL);
}

// Loop
void loop() {

unsigned long currentMillis = millis();  

if(currentMillis - previousMillis > interval) {
    // save the last time sent the data
    previousMillis = currentMillis;


  analogReference(DEFAULT);
  wait(500);
   readLightLevel();   //Read Light

  analogReference(INTERNAL);
  wait(500);
  
  // need to read the NVM compensation parameters
  BME280.readCompensationParams();

  // Normal mode for regular automatic samples
  BME280.writeStandbyTime(tsb_0p5ms);         // tsb = 0.5ms
  BME280.writeFilterCoefficient(fc_16);       // IIR Filter coefficient 16
  BME280.writeOversamplingPressure(os16x);    // pressure x16
  BME280.writeOversamplingTemperature(os8x);  // temperature x8
  BME280.writeOversamplingHumidity(os8x);     // humidity x8
  
  BME280.writeMode(smNormal);

    // Just to be sure, wait until sensor is done mesuring  
    while (BME280.isMeasuring()) {
  }

  // Read out the data - must do this before calling the getxxxxx routines
  BME280.readMeasurements();

  float temperature = BME280.getTemperatureMostAccurate();                    // must get temp first
  float humidity = BME280.getHumidityMostAccurate();
  float pressure_local = BME280.getPressureMostAccurate();                    // Get pressure at current location
  float pressure = pressure_local/pow((1.0 - ( ALTITUDE / 44330.0 )), 5.255); // Adjust to sea level pressure using user altitude
  int forecast = sample(pressure);

  if (!metric) 
  {
    // Convert to fahrenheit
    temperature = temperature * 9.0 / 5.0 + 32.0;
  }

  Serial.println();
  Serial.print("Temperature = ");
  Serial.print(temperature);
  Serial.println(metric ? " °C" : " °F");
  Serial.print("Humidity = ");
  Serial.print(humidity);
  Serial.println(" %");
  Serial.print("Pressure = ");
  Serial.print(pressure);
  Serial.println(" hPa");
  Serial.print("Forecast = ");
  Serial.println(weather[forecast]);
  Serial.println();


    send(tempMsg.set(temperature, 1));
wait(50);
    send(humMsg.set(humidity, 1));
wait(50);
    send(pressureMsg.set(pressure, 2));
wait(50);
    send(forecastMsg.set(weather[forecast]));
wait(50);

}
}

void readLightLevel()      {
  Serial.println(analogRead(A0));  
  int lightLevel = (1023 - analogRead(LIGHT_SENSOR_ANALOG_PIN)) / 10.23; //To get a value ranging from 0 (dark) to 100 (bright).

#ifdef MY_DEBUG
  Serial.print("Light: "); Serial.println(lightLevel);
#endif
  send(light_Msg.set(lightLevel));

}
