#include<pic.h>

void delay(unsigned int x)
{
	while(x-->0);
}


void interrupt isr()
{
	T0IF=0;
	TMR0=0;
	PORTD=~PORTD;
delay(100);
	
}

void main()
{

	TRISC=0x00;
	TRISD=0x00;
	PORTC=0x00;
	PORTD=0x00;
	
	OPTION_REG=0x08;
	TMR0=0;
	T0IF=0;

	GIE=1;
	T0IE=1;
	
	while(1)
		{
			PORTC=~PORTD;
			delay(20000);

		}

}