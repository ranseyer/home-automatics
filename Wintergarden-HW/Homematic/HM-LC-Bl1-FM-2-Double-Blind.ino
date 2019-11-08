//- -----------------------------------------------------------------------------------------------------------------------
// AskSin++
// 2017-12-14 papa Creative Commons - http://creativecommons.org/licenses/by-nc-sa/3.0/de/
//- -----------------------------------------------------------------------------------------------------------------------

// define this to read the device id, serial and device type from bootloader section
// #define USE_OTA_BOOTLOADER

#define EI_NOTEXTERNAL
#include <EnableInterrupt.h>
#include <AskSinPP.h>
#include <LowPower.h>

#include <Blind.h>

//Invertieren
#define DEVICE_CONFIG CFG_LOWACTIVE_ON

// we use a Pro Mini
// Arduino pin for the LED
#define LED_PIN 13
// Arduino pin for the config button
// B0 == PIN 8 on Pro Mini
#define CONFIG_BUTTON_PIN 5

//Jal A1:On A0:Dir
#define ON_RELAY_PIN 15
#define DIR_RELAY_PIN 14

//Mark: A2:on A3:Dir
#define ON_RELAY2_PIN 16
#define DIR_RELAY2_PIN 17

//Jal
#define UP_BUTTON_PIN 7
#define DOWN_BUTTON_PIN 6

//Mark
#define UP_BUTTON2_PIN 8
#define DOWN_BUTTON2_PIN 9

// number of available peers per channel
#define PEERS_PER_CHANNEL 6

// all library classes are placed in the namespace 'as'
using namespace as;


// define all device properties
const struct DeviceInfo PROGMEM devinfo = {
  {0xF2, 0x07, 0x01},            // Device ID
  "JPBL200001",                  // Device Serial
  {0xF2, 0x07},                  // Device Model
  0x25,                          // Firmware Version
  as::DeviceType::BlindActuator, // Device Type
  {0x01, 0x00}                   // Info Bytes
};


/**
   Configure the used hardware
*/
typedef AvrSPI<10, 11, 12, 13> RadioSPI;
typedef AskSin<StatusLed<LED_PIN>, NoBattery, Radio<RadioSPI, 2> > Hal;

DEFREGISTER(BlindReg0, MASTERID_REGS, DREG_INTKEY, DREG_CONFBUTTONTIME, DREG_LOCALRESETDISABLE)

class BlindList0 : public RegList0<BlindReg0> {
  public:
    BlindList0 (uint16_t addr) : RegList0<BlindReg0>(addr) {}
    void defaults () {
      clear();
      // intKeyVisible(false);
      confButtonTime(0xff);
      // localResetDisable(false);
    }
};


class BlChannel : public ActorChannel<Hal, BlindList1, BlindList3, PEERS_PER_CHANNEL, BlindList0, BlindStateMachine> {
  private:
    uint8_t on_relay_pin;
    uint8_t dir_relay_pin;
  public:
    typedef ActorChannel<Hal, BlindList1, BlindList3, PEERS_PER_CHANNEL, BlindList0, BlindStateMachine> BaseChannel;

    BlChannel () : on_relay_pin(0), dir_relay_pin(0) {}
    virtual ~BlChannel () {}

    virtual void switchState(uint8_t oldstate, uint8_t newstate, uint32_t stateDelay) {
      BaseChannel::switchState(oldstate, newstate, stateDelay);
      if ( newstate == AS_CM_JT_RAMPON && stateDelay > 0 ) {
        motorUp();
      }
      else if ( newstate == AS_CM_JT_RAMPOFF && stateDelay > 0 ) {
        motorDown();
      }
      else {
        motorStop();
      }
    }

    void motorUp () {
      digitalWrite(dir_relay_pin, LOW);
      digitalWrite(on_relay_pin, LOW);
    }

    void motorDown () {
      digitalWrite(dir_relay_pin, HIGH);
      digitalWrite(on_relay_pin, LOW);
    }

    void motorStop () {
      digitalWrite(dir_relay_pin, HIGH);
      digitalWrite(on_relay_pin, HIGH);
    }

    void init (uint8_t op, uint8_t dp) {
      on_relay_pin = op;
      dir_relay_pin = dp;
      pinMode(on_relay_pin, OUTPUT);
      pinMode(dir_relay_pin, OUTPUT);
      motorStop();
      BaseChannel::init();
    }
};


// setup the device with channel type and number of channels
typedef MultiChannelDevice<Hal, BlChannel, 2, BlindList0> BlindType;

Hal hal;
BlindType sdev(devinfo, 0x20);
ConfigButton<BlindType> cfgBtn(sdev);
InternalButton<BlindType> btnup(sdev, 1);
InternalButton<BlindType> btndown(sdev, 2);
InternalButton<BlindType> btnup2(sdev, 3);
InternalButton<BlindType> btndown2(sdev, 4);

void initPeerings (bool first) {
  // create internal peerings - CCU2 needs this
  if ( first == true ) {
    HMID devid;
    sdev.getDeviceID(devid);
    Peer p1(devid, 1);
    Peer p2(devid, 2);
    Peer p3(devid, 3);
    Peer p4(devid, 4);
    sdev.channel(1).peer(p1, p2);
    sdev.channel(2).peer(p3, p4);
  }
}

void setup () {
  DINIT(57600, ASKSIN_PLUS_PLUS_IDENTIFIER);
  //storage().setByte(0,0);
  bool first = sdev.init(hal);
  sdev.channel(1).init(ON_RELAY_PIN, DIR_RELAY_PIN);
  sdev.channel(2).init(ON_RELAY2_PIN, DIR_RELAY2_PIN);

  buttonISR(cfgBtn, CONFIG_BUTTON_PIN);
  buttonISR(btnup, UP_BUTTON_PIN);
  buttonISR(btndown, DOWN_BUTTON_PIN);
  buttonISR(btnup2, UP_BUTTON2_PIN);
  buttonISR(btndown2, DOWN_BUTTON2_PIN);

  initPeerings(first);
  sdev.initDone();
}

void loop() {
  bool worked = hal.runready();
  bool poll = sdev.pollRadio();
  if ( worked == false && poll == false ) {
    hal.activity.savePower<Idle<> >(hal);
  }
}
