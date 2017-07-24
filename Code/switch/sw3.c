#include<pic.h>

#define k0 RD0
#define k1 RD1
#define k2 RD2
#define k3 RD3
#define k4 RD4
#define k5 RD5
#define k6 RD6
#define k7 RD7

int delayen=1;
void delay(int x)
{
if(delayen)
return;

while(x-->0);
}
void reset()
{
PORTC=0x00;
}
void main()
{

int ctr=0;



TRISC=0x00;
TRISD=0xFF;

PORTC=0x00;
PORTD=0x00;

while(1){


if(k0==1)
{
reset();
RC0=1;
RC1=1;


}
else if(k1==1)
{
reset();
RC2=1;
RC3=1;


}
else if(k2==1)
{
reset();

RC4=1;
RC5=1;

}
else if(k3==1)
{
reset();

RC6=1;
RC7=1;

}
else if(k4==1)
{
reset();
PORTC=0XFF;
}
else if(k5==1)
{
reset();

} 
delay(2500);
}

 




}





 