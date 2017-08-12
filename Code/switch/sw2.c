#include<pic.h>

#define k0 RD0
#define k1 RD1
#define k2 RD2
#define k3 RD3
#define k4 RD4
#define k5 RD5
#define k6 RD6
#define k7 RD7

void main()
{

int ctr=0;



TRISC=0x00;
TRISD=0xFF;

PORTC=0xFF;
PORTD=0x00;

while(1){


if(k0==1)
ctr=1;
else if(k1==1)
ctr=0;

if(ctr==1)
PORTC=0xFF;
else
PORTC=0x00;
}
}







void main1()
{
	
int ctrl=0;
	TRISC=0x00;
	TRISD=0xFF;
	
	PORTC=0x00;
	PORTD=0x00;

while(1){

if(k1==1)
 	ctrl=1;

else if(k2==1)
	ctrl=0;


if(ctrl==1)
	PORTC=0xFF;
else
	PORTC=0x00;



}





}