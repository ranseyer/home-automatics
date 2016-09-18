# H801 Dimmer based on ESP8266

## HW-Info / Arduino Config
COM port with 115200 bauds (receive HUACANXING WIFI Control LED System H801WiFi V1.2 on normal boot)
Board: Generix ESP8266 Module
Flash mode: DIO
Flash freq: 40MHz
CPU Freq 80 MHz
Flash size 512K (64K SPIFFS)

red pin 15
green pin 13
blue pin 12
white pin 14
w2 pin 4

LED pin 5
LED2 pin 1


##ESPeasy-Test per Browser
Rot Einschalten:
http://192.168.1.201/control?cmd=GPIO,15,1

##MiLight
rgbw milight udp port 8899
