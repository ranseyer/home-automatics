#ifndef _MAIN_H
 #define _MAIN_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include <avr/signal.h>
#include <avr/eeprom.h>

#include "uart.h"
#include "clock.h"

//Hier die Quarz Frequenz einstellen
#define F_CPU	8000000L	//Quarz Frequenz in Hz

uint16_t read_adc(char port);
void autogiess();

struct eeprom_giess
{
	unsigned char automatik;
	uint16_t pump_on;
	uint16_t pump_off;
	char name[16];
	uint16_t seconds_on;
	uint16_t hours_off;
};

#endif //_MAIN_H






