#include<pic.h>

void main()
{
 
	 
 
	TRISC=0x00; 
	TRISA=0xFF; 
	
	TXEN=0;
    PORTA=0xF;
		
while(1)
{
	if(RC5==1)
		PORTC=0x0;
	else
       PORTC=0xF;
		
}
}