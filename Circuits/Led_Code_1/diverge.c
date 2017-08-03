#include<pic.h>


void delay(unsigned int x)
{

while(x-->0);

}


void main()
{
int pat []={0x00,0x18,0x3C,0x7E,0xFF};
int c=0;
int rex=0x00;
TRISC=0x00;

for(c=0;c<5;c++)
{

rex=pat[c];
PORTC=rex;
delay(20000);



}



}
