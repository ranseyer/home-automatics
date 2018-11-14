/*#######################################################################################
AVR Small Webserver 

Copyright (C) 2004 Ulrich Radig

#######################################################################################*/

#include "main.h"
#include "uart.h"
#include <stdio.h>
                                             
// bei neueren AVRs andere Bezeichnung fuer die Statusregister, hier ATmega16:
int uart_putc(char c, FILE *stream)
{
    while (!(UCSRA & (1<<UDRE))); /* warten bis Senden moeglich */
    UDR = c;                      /* sende Zeichen */
    return 0;
}

int uart_getc(FILE *stream)
{
    while (!(UCSRA & (1<<RXC)));  // warten bis Zeichen verfuegbar
    return UDR;                   // Zeichen aus UDR an Aufrufer zurueckgeben
}

int uart_is_rx()
{
	return UCSRA & (1<<RXC);
}

/* puts ist unabhaengig vom Controllertyp */
void uart_puts (char *s)
{
    while (*s)
    {   /* so lange *s != '\0' also ungleich dem "String-Endezeichen" */
        uart_putc(*s, 0);
        s++;
    }
}

void uart_puts_P(const char *str)
{
	char c;
    while ((c = pgm_read_byte(str)) != 0)
    {   /* so lange *s != '\0' also ungleich dem "String-Endezeichen" */
        uart_putc(c, 0);
        str++;
    }
}

int uart_read_nr()
{
	int nr = 0;
	char c;
	
	while(1)
	{
		while(!(UCSRA & (1<<RXC)));
		c = uart_getchar();
		if(c == '\r' || c == '\n')
			break;
		nr = nr*10 + c-'0';
		uart_putchar(c);
	}
	return nr;
}

//############################################################################
//INstallation der Seriellen Schnittstelle
void UART_Init (void)
//############################################################################
{
	/* Set baud rate */
	UBRRH = (unsigned char)(BAUD_VALUE>>8);
	UBRRL = (unsigned char)BAUD_VALUE;
	/* Enable Receiver and Transmitter */
	UCSRB = (1<<RXEN)|(1<<TXEN);
	/* Set frame format: 8data, 2stop bit */
	UCSRC = (1<<URSEL)|(1<<USBS)|(3<<UCSZ0);
	
	fdevopen(uart_putc, uart_getc);
}

