#include<pic.h>


void interrupt isr()
{
	T0IF=0;
	TMR0=0;
	PORTD=~PORTD;
	
}

void delay(unsigned int x)
{
	while(x-->0);
}

void main()
{

	TRISC=0x00;
	TRISD=0x00;
	PORTC=0x00;
	PORTD=0x00;
	
	OPTION_REG=0x08;
	TMR1=0; 

	GIE=1;	
	PEIE=1;
	TMR1IE=0;

	
	while(1)
		{
			PORTC=~PORTD;
			delay(20000);

		}

}