#include "main.h"

struct eeprom_giess *gpEEPROM = (struct eeprom_giess*)0;
#define EEPROM_ADDR_TICKCOUNT	(uint16_t*)(sizeof(struct eeprom_giess)*6)

struct time_st zuletzt_gegossen[2][6];

#define AUTOMATIK_OFF	0xFF
#define AUTOMATIK_TIME	'T'
#define AUTOMATIK_MEAS	'M'

#define PUMP1_PORT	PORTD
#define PUMP1_PIN	0x08
#define PUMP2_PORT	PORTD
#define PUMP2_PIN	0x10
#define PUMP3_PORT	PORTD
#define PUMP3_PIN	0x04
#define PUMP4_PORT	PORTD
#define PUMP4_PIN	0x40
#define PUMP5_PORT	PORTD
#define PUMP5_PIN	0x80
#define PUMP6_PORT	PORTB
#define PUMP6_PIN	0x01

void get_flower_name(unsigned char index, char* name);
void print_time(struct time_st *pTime);
void print_time2();


void switch_pump(unsigned char index, char on_off)
{
//	char name[16];
	if(index == 0)
	{
		if(on_off)	PUMP1_PORT |= PUMP1_PIN;
		else		PUMP1_PORT &= ~PUMP1_PIN;
	}
	if(index == 1)
	{
		if(on_off)	PUMP2_PORT |= PUMP2_PIN;
		else		PUMP2_PORT &= ~PUMP2_PIN;
	}
	if(index == 2)
	{
		if(on_off)	PUMP3_PORT |= PUMP3_PIN;
		else		PUMP3_PORT &= ~PUMP3_PIN;
	}
	if(index == 3)
	{
		if(on_off)	PUMP4_PORT |= PUMP4_PIN;
		else		PUMP4_PORT &= ~PUMP4_PIN;
	}
	if(index == 4)
	{
		if(on_off)	PUMP5_PORT |= PUMP5_PIN;
		else		PUMP5_PORT &= ~PUMP5_PIN;
	}
	if(index == 5)
	{
		if(on_off)	PUMP6_PORT |= PUMP6_PIN;
		else		PUMP6_PORT &= ~PUMP6_PIN;
	}
	
//	get_flower_name(index, name);
	if(on_off)
	{
//		printf("* giesse %s !\r\n", name);
		memcpy(&zuletzt_gegossen[1][index], &zuletzt_gegossen[0][index], sizeof(struct time_st));
		memcpy(&zuletzt_gegossen[0][index], &zeit, sizeof(struct time_st));
	}
//	else
//		printf("* %s fertig gegossen. *\r\n", name);
}

char pump_status(unsigned char index)
{
	if(index == 0)
	{
		if(PUMP1_PORT & PUMP1_PIN) return 1;
		else return 0;
	}	
	if(index == 1)
	{
		if(PUMP2_PORT & PUMP2_PIN) return 1;
		else return 0;
	}		
	if(index == 2)
	{
		if(PUMP3_PORT & PUMP3_PIN) return 1;
		else return 0;
	}		
	if(index == 3)
	{
		if(PUMP4_PORT & PUMP4_PIN) return 1;
		else return 0;
	}		
	if(index == 4)
	{
		if(PUMP5_PORT & PUMP5_PIN) return 1;
		else return 0;
	}		
	if(index == 5)
	{
		if(PUMP6_PORT & PUMP6_PIN) return 1;
		else return 0;
	}
	return -1;
}

void get_flower_name(unsigned char index, char* name)
{
	eeprom_read_block(name, gpEEPROM[index].name, 16);
	name[15] = 0;
	if(name[0] < 0x20)
	{
		strcpy(name, "Blume");
		name[5] = index+'1';
		name[6] = 0;
	}
}
	
void print_menu()
{
	unsigned char i;
	char name[16];
	uart_puts_P(PSTR("\r\n\nGiess-o-mat Hauptmenue\r\n"));
	for(i=1; i<=6; i++)
	{
		get_flower_name(i-1, name);
		printf(" %d - %s\r\n", i, name); 
	}		
	uart_puts_P(PSTR(" s - Sensorwerte anzeigen\r\n"));
	uart_puts_P(PSTR(" c - Sensorwerte -> CSV\r\n"));
	uart_puts_P(PSTR(" k - aktuelle Konfiguration anzeigen\r\n"));
	uart_puts_P(PSTR(" u - Uhr stellen\r\n\n"));
}
 	
void print_adcs()
{
	char i;
	unsigned char sec = 0;

	while(!uart_is_rx())
	{
		if(zeit.sec != sec)
		{
			autogiess();
			uart_puts_P(PSTR("\r\n"));
			print_time(&zeit);
			for(i=0; i<6; i++)
			{
				uint16_t freq = get_freq(i);
				printf(", %5u0", freq);
			}
			sec = zeit.sec;
		}
	}
	uart_getchar();
}

void print_csv()
{
	int i;
	unsigned char sec = 0;
	uint32_t wsum[6];
	char pump_on[6];
	int mincount = 1;
	int print_header = 1;

	uart_puts_P(PSTR("\r\nCSV output. Press ESC to end\r\n"));

	for(i=0; i<6; i++)
	{
		wsum[i] = 0;
		pump_on[i] = 0;
	}

	while(1)
	{
		if(zeit.sec != sec)
		{
			autogiess();
			sec = zeit.sec;
			for(i=0; i<6; i++)
			{
				uint16_t freq = get_freq(i);
				wsum[i] += (uint32_t)freq;

				if(pump_status(i) != 0)
					pump_on[i] = 1;
			}

			if(sec == 0)
			{
				if(print_header)
				{
					int i;
					char name[16];
					uart_puts_P(PSTR(";Zeit"));
					for(i=0; i<6; i++)
					{
						get_flower_name(i, name);
						printf(";%s", name);
					}
					uart_puts_P(PSTR("\r\n#P;"));
					print_time2();
					for(i=0; i<6; i++)
					{
						uint16_t schwelle = 0;
						eeprom_read_block(&schwelle, &gpEEPROM[i].pump_on, sizeof(schwelle));
						printf(";%u", schwelle);
					}
					print_header = 0;
				}

				if(mincount == 10)
				{
					int pumped = 0;
					uart_puts_P(PSTR("\r\n#S;"));
					print_time2();

					for(i=0; i<6; i++)
					{
						uint32_t mw = wsum[i] / 60;
						mw = mw / mincount;
						printf(";%u", (uint16_t)mw);
						wsum[i] = 0;
						if(pump_on[i])
							pumped = 1;
					}
					if(pumped)
					{
						uart_puts_P(PSTR("\r\n#P;"));
						print_time2();
						for(i=0; i<6; i++)
						{
							uint16_t schwelle = 0;
							if(pump_on[i])
							{
								eeprom_read_block(&schwelle, &gpEEPROM[i].pump_on, sizeof(schwelle));
								pump_on[i] = 0;
							}
							printf(";%u", schwelle);
						}
					}
					mincount = 1;
				}
				else
					mincount++;
			}
		}

		if(uart_is_rx())
		{
			char uart_in = uart_getchar();
			if(uart_in == 0x1b)
				break;

			if(uart_in == 'c')
				print_header = 1;
		}
	}
}

void print_config()
{
	unsigned char i;
	uint16_t feuchte;
	struct eeprom_giess flower;
	int diff_day, diff_hour, diff_min, diff_sec;
	
	uart_puts_P(PSTR("\r\nBlume            Sensor  Auto Giesszeit      Pumpe zuletzt_gegossen letztes_Intervall"));
	for(i=0; i<6; i++)
	{
		eeprom_read_block(&flower, &gpEEPROM[i], sizeof(struct eeprom_giess));
		get_flower_name(i, flower.name);
		feuchte = get_freq(i);
		printf("\r\n%-16s  %5u ", flower.name, feuchte);
		
		if(flower.automatik == AUTOMATIK_TIME || flower.automatik == AUTOMATIK_MEAS)
		{
			if(flower.automatik == AUTOMATIK_TIME)
			{
				uart_puts_P(PSTR("TIMER  "));
			}
			else
			{
				printf("%5u  ", flower.pump_on);
			}
			printf("%02dm%02ds%3dd%02dh ", flower.seconds_on/60, flower.seconds_on%60,
				flower.hours_off/24, flower.hours_off%24);
		}
		else	
		{
			uart_puts_P(PSTR(" AUS                 "));
		}
		if(pump_status(i))
			uart_puts_P(PSTR(" AN   "));
		else
			uart_puts_P(PSTR(" AUS  "));
		
		print_time(&zuletzt_gegossen[0][i]);
		diff_day = zuletzt_gegossen[0][i].day - zuletzt_gegossen[1][i].day;
		diff_hour= zuletzt_gegossen[0][i].hour -zuletzt_gegossen[1][i].hour;
		diff_min = zuletzt_gegossen[0][i].min - zuletzt_gegossen[1][i].min;
		diff_sec = zuletzt_gegossen[0][i].sec - zuletzt_gegossen[1][i].sec;
		if(diff_sec < 0)
		{
			diff_sec += 60;
			diff_min--;
		}
		if(diff_min < 0)
		{
			diff_min += 60;
			diff_hour--;
		}
		if(diff_hour < 0)
		{
			diff_hour += 24;
			diff_day--;
		}
		printf(" %3dd,%02d:%02d:%02d", diff_day, diff_hour, diff_min, diff_sec);
	}	
}

void print_time(struct time_st *pTime)
{
	printf("%02d.%s.20%02d %02d:%02d:%02d",
			pTime->day, 
			monat[pTime->month-1],
			pTime->year,
			pTime->hour, 
			pTime->min, 
			pTime->sec);
}

void print_time2()
{
	printf("20%02d-%02d-%02d %02d:%02d",
				zeit.year,
				zeit.month,
				zeit.day,
				zeit.hour,
				zeit.min);
}

void set_time()
{
	int newtick;
	uart_puts_P(PSTR("\r\nJahr ? 20"));
	zeit.year = uart_read_nr();
	uart_puts_P(PSTR("\r\nMonat (1-12) ? "));
	zeit.month = uart_read_nr();	
	uart_puts_P(PSTR("\r\nTag ? "));
	zeit.day = uart_read_nr();
	uart_puts_P(PSTR("\r\nStunde ? "));
	zeit.hour = uart_read_nr();
	uart_puts_P(PSTR("\r\nMinute ? "));
	zeit.min = uart_read_nr();
	zeit.sec = 0;
	uart_puts_P(PSTR("\r\nSekundenlaenge Feintuning:\r\n"));
	printf("aktuell=%d. neuer Wert (ENTER=keine Aenderung) ?", tickcount);
	newtick = uart_read_nr();
	if(newtick > 0)
	{
		tickcount = newtick;
		eeprom_write_word(EEPROM_ADDR_TICKCOUNT, newtick);
	}
}
	
void print_flower_setup(unsigned char index, struct eeprom_giess* pGiess)
{
	printf("\r\n\n** %d. %s **\r\n", index+1, pGiess->name);
	uart_puts_P(PSTR(" n - Blumennamen aendern\r\n"));
	uart_puts_P(PSTR(" i - Pumpe ein\r\n"));
	uart_puts_P(PSTR(" o - Pumpe aus\r\n"));
	uart_puts_P(PSTR(" a - Automatik Modus: "));
		
	if(pGiess->automatik == AUTOMATIK_MEAS)
	{
		uart_puts_P(PSTR("Feuchtigkeitsmessung\r\n"));
		printf(" e - Einschaltpunkt: %u\r\n", pGiess->pump_on);
		uart_puts_P(PSTR(" t - min. "));
	}
	if(pGiess->automatik == AUTOMATIK_TIME)
	{
		uart_puts_P(PSTR("Zeitsteuerung\r\n"));
		uart_puts_P(PSTR(" t - "));
	}
	if(pGiess->automatik == AUTOMATIK_TIME || pGiess->automatik == AUTOMATIK_MEAS)
	{	
		printf("Intervall: %d Tage, %d Std.\r\n",
			pGiess->hours_off/24, pGiess->hours_off%24);
		printf("     Giesszeit: %02d:%02d min\r\n",
			pGiess->seconds_on/60, pGiess->seconds_on%60);
	}
	else // AUTOMATIK_OFF:
	{
		uart_puts_P(PSTR("aus\r\n"));
	}

	uart_puts_P(PSTR(" z - Hauptmenue\r\n\n"));
}
		
char flower_setup(unsigned char index)
{
	unsigned char i;
	uint16_t act;
	char uart_in, z;
	struct eeprom_giess flower;
	eeprom_read_block(&flower, &gpEEPROM[index], sizeof(struct eeprom_giess));
	get_flower_name(index, flower.name);
	print_flower_setup(index, &flower);
	char save;
	
	while(1)
	{
		act = get_freq(index);

		uart_puts_P(PSTR("\raktueller Messwert: "));
		printf("%u   ", act);
		
		if(uart_is_rx())
		{
			uart_in = uart_getchar();	
			save = 0;	
			switch(uart_in)
			{
				case 'i':
					switch_pump(index, 1);
					break;
					
				case 'o':
					switch_pump(index, 0);
					break;	
					
				case 'a':
					if(flower.automatik == AUTOMATIK_OFF)
						flower.automatik = AUTOMATIK_MEAS;
					else if(flower.automatik == AUTOMATIK_MEAS)
						flower.automatik = AUTOMATIK_TIME;
					else
						flower.automatik = AUTOMATIK_OFF;
					save = 1;
					break;	
					
				case 'n':
					uart_puts_P(PSTR("\r\nNeuer Name: "));
					for(i=0; i<sizeof(flower.name)-1; i++)
					{
						flower.name[i] = 0;
						z = uart_getchar();	
						if(z == '\r' || z == '\n')
							break;
						flower.name[i] = z;
						printf("%c", z);
					}
					flower.name[sizeof(flower.name)-1] = 0;
					if(i==0) break;
					save = 1;
					break;					
					
				case 't':
					uart_puts_P(PSTR("\r\nmin. Giessintervall in Stunden ? "));
					flower.hours_off = uart_read_nr();
					uart_puts_P(PSTR("\r\nGiesszeit in Sekunden ? "));
					flower.seconds_on = uart_read_nr();
					save = 1;
					break;

				case 'e':
					uart_puts_P(PSTR("Einschaltpunkt ? "));
					flower.pump_on = uart_read_nr();
					save = 1;
					break;
					
				default:
					return uart_in;
					break;
			}
			if(save)
			{
				eeprom_write_block(&flower, &gpEEPROM[index], sizeof(struct eeprom_giess));
				print_flower_setup(index, &flower);
			}
		}
	}
}

int main (void)
{
	unsigned char i;
	char uart_in;
	unsigned char sec = 0;

	TIMSK = 0;
	Clock_Init();

	// Multiplexer Ausgaenge
	PORTC = 0;
	DDRC = 0x07;

	PORTD = 0;
	DDRD = PUMP1_PIN | PUMP2_PIN | PUMP3_PIN | PUMP4_PIN | PUMP5_PIN;
	PORTB = 0;
	DDRB = PUMP6_PIN;
	
	zeit.day = 1;
	zeit.month = 1;
	tickcount = eeprom_read_word(EEPROM_ADDR_TICKCOUNT);
	if(tickcount == 0 || tickcount == 0xFFFF)
		tickcount = 250;

	UART_Init();
	sei();

	for(i=0; i<6; i++)
	{
		memcpy(&zuletzt_gegossen[0][i], &zeit, sizeof(struct time_st));
		memcpy(&zuletzt_gegossen[1][i], &zeit, sizeof(struct time_st));
	}
		
	print_menu();
		
	while(1) 
	{
		if(sec != zeit.sec)
		{
			uart_puts_P(PSTR("\r"));
			print_time(&zeit);
			sec = zeit.sec;
			autogiess();
		}
		if(uart_is_rx())
		{
			uart_in = uart_getchar();
			while(uart_in >= '1' && uart_in <= '6')
				uart_in = flower_setup(uart_in - '1');
				
			if(uart_in == 's')
				print_adcs();
								
			if(uart_in == 'k')
				print_config();
				
			if(uart_in == 'u')
				set_time();		

			if(uart_in == 'c')
				print_csv();

			print_menu();	
		}
	}
	
	return 1;
}
/*
uint16_t read_adc(char port)
{
	ADMUX = port;
	ADCSRA |= (1<<ADSC);
	while(ADCSRA & (1<<ADSC));
	return ADCW;
}
*/

void autogiess()
{
	unsigned char i;
	uint16_t feuchte;
	struct eeprom_giess giess;
	char pump_running;
	
	for(i=0; i<6; i++)
	{
		eeprom_read_block(&giess, &gpEEPROM[i], sizeof(struct eeprom_giess));
		pump_running = pump_status(i);
		feuchte = get_freq(i);

		if(pump_running)
		{
			if(zeit.sec_cnt - zuletzt_gegossen[0][i].sec_cnt >= giess.seconds_on)
			{
				switch_pump(i, 0);
			}
		} else
		{
			if(zeit.hour_cnt - zuletzt_gegossen[0][i].hour_cnt >= giess.hours_off)
			{
				if((giess.automatik == AUTOMATIK_MEAS && feuchte > giess.pump_on) ||
				   (giess.automatik == AUTOMATIK_TIME))
				{
					switch_pump(i, 1);
				}
			}
		}
	}	
}


