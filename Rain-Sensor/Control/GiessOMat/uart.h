/*#######################################################################################
AVR Small Webserver 

Copyright (C) 2004 Ulrich Radig

#######################################################################################*/

#ifndef _UART_H
 #define _UART_H

extern void UART_Init (void);
int uart_is_rx();
void uart_puts(char* s);
int uart_putc(char c, FILE *stream);
int uart_getc(FILE *stream);
#define uart_putchar(c)	uart_putc(c,0)
#define uart_getchar()	uart_getc(0)
int uart_read_nr();
void uart_puts_P(const char *str);

//Die Baud_Rate der Seriellen Schnittstelle
//#define BAUD_RATE 9600		//Baud Rate f�r die Serielle Schnittstelle
//#define BAUD_RATE 14400		//Baud Rate f�r die Serielle Schnittstelle	
//#define BAUD_RATE 28800		//Baud Rate f�r die Serielle Schnittstelle	
#define BAUD_RATE 38400		//Baud Rate f�r die Serielle Schnittstelle
//#define BAUD_RATE 57600		//Baud Rate f�r die Serielle Schnittstelle	

#define BAUD_VALUE	(F_CPU / (BAUD_RATE * 16L) - 1)

#endif //_UART_H
