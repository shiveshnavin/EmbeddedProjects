#include<pic.h>


void main()
{

TRISC=0xFF;
TRISD=0x00;

PORTC=0;
PORTD=0;

if(RC0==1)
{

RD0=1;

}
else{

RD0=0;

}




}
