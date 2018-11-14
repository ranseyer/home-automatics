/* clock.c
 * eine Uhr für den AVR 
 */
 
#include "main.h"

struct time_st zeit;
int tickcount;

const char days_in_month[12] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
const char monat[12][4] = 
{ "Jan\0",
  "Feb\0",
  "Mar\0",
  "Apr\0",
  "Mai\0",
  "Jun\0",
  "Jul\0",
  "Aug\0",
  "Sep\0",
  "Okt\0",
  "Nov\0",
  "Dez\0"
};

enum {
  STOP             = 0,
  CK               = 1,
  CK8              = 2,
  CK64             = 3,
  CK256            = 4,
  CK1024           = 5,
  T0_FALLING_EDGE  = 6,
  T0_RISING_EDGE   = 7
};


void switch_multiplexer(uint8_t port)
{
	PORTC = PORTC & 0xF8;
    switch(port)
    {
    case 1: PORTC |= 4; break;
    case 3: PORTC |= 6; break;
    case 4: PORTC |= 1; break;
    case 6: PORTC |= 3; break;
    default: PORTC |= port; break;
    }
}

volatile unsigned char current_port = 0;	// aktueller Multiplexer Eingang

void Clock_Init(void)
{
// Timer/Counter 0 initialization
// (for system Clock = 8.000.000)
// Clock source: System Clock
// Mode: Normal top=FFh
// OC0 output: Disconnected
 TCCR0 = CK256;
 TCNT0 = -125;  // reload
// OCR0  = 0x00;
// Timer(s)/Counter(s) Interrupt(s) initialization

 TCCR1B = T0_RISING_EDGE;	// Clock Source = Pin T1
 TCNT1 = 0;

 TIMSK |= 0x01;
}

volatile unsigned char tick125 = 0;
volatile unsigned char cntFreq = 0;
volatile uint16_t freq_in[6];
volatile unsigned char count_state = 0;

uint16_t get_freq(unsigned char port)
{
	return freq_in[port];
}

#ifndef TIMER0_OVF_vect
// Für ältere WinAVR Versionen z.B. WinAVR-20071221
#define TIMER0_OVF_vect TIMER0_OVF0_vect
#endif

ISR (TIMER0_OVF_vect)
{
	TCNT0 = -125;  // reload

	tick125++;
	cntFreq++;
	if(cntFreq == 25)
	{
		if(count_state == 0)
		{
			freq_in[current_port] = TCNT1;
			current_port++;
			if(current_port >= 6)
				current_port = 0;
			switch_multiplexer(current_port);
			count_state = 1;
		}
		else if(count_state == 1)
		{
			TCNT1 = 0;
			count_state = 0;
		}
		cntFreq = 0;
	}
	if(tick125 >= tickcount)
	{
		tick125 = 0;

		zeit.sec++;
		zeit.sec_cnt++;
		if(zeit.sec >= 60)
		{
			zeit.sec = 0;
			zeit.min++;
			if(zeit.min >= 60)
			{
				zeit.min = 0;
				zeit.hour++;
				zeit.hour_cnt++;
				if(zeit.hour >= 24)
				{
					int days = days_in_month[zeit.month-1];
					if(zeit.month == 2 && (zeit.year & 0x3) == 0)
						days = 29;

					zeit.hour = 0;
					zeit.day++;
					if(zeit.day > days)
					{
						zeit.day = 1;
						zeit.month++;
						if(zeit.month > 12)
						{
							zeit.month = 1;
							zeit.year++;
						}
					}
				}
			}
		}
	}
}
