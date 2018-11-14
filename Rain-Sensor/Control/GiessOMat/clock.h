#ifndef _CLOCK_H_
#define _CLOCK_H_

enum weekday
{
	Montag,
	Dienstag,
	Mittwoch,
	Donnerstag,
	Freitag,
	Samstag,
	Sonntag
};

struct time_st
{
	unsigned char sec;
	unsigned char min;
	unsigned char hour;
	unsigned char day;
	unsigned char month;
	unsigned char year;
	unsigned char sec_cnt;
	unsigned char hour_cnt;
};

extern struct time_st zeit;
extern const char monat[12][4];
extern int tickcount;

void Clock_Init();
uint16_t get_freq(unsigned char port);

#endif //_CLOCK_H_
