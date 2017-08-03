#include<pic.h>

void delay(unsigned int x){
while(x-->0);
}
void resetout()
{
RD4=0;
RD5=0;
RD6=0;
RD7=0;
}
int clock()
{

int c=0;
int r=0;
for(c=0;c<4;c++)
{

if(c==0)
{
RD4=1; 
}
else if(c==1)
{
RD5=1; 
}
else if(c==2)
{
RD6=1; 
}
else if(c==3)
{
RD7=1; 
}
delay(100);
resetout();

}
 

}
int  read()
{
if(RD0==1)
 return 0;
else if(RD1==1)
 return 1;
else if(RD2==1)
 return 2;
else if(RD3==1)
 return 3;

} 



int scann()
{
 
 clock();
 if(PORTD==0b10001000)
 {
 	return 0;

 }
 else if(PORTD==0b10000100)
 {
 	return 1;

 }
 else if(PORTD==0b10000010)
 {
 	return 2;
 	
 }
 else if(PORTD==0b10000001)
 {
 	return 3;
 	
 }
 else if(PORTD==0b01001000)
 {
 	return 4;
 	
 }
 else if(PORTD==0b01000100)
 {
 	return 5;
 	
 }
 else if(PORTD==0b01000010)
 {
 	return 6;
 	
 }
 else if(PORTD==0b01000001)
 {
 	return 7;
 	
 }
 else if(PORTD==0b00101000)
 {
 	return 8;
 	
 }
 else if(PORTD==0b00100100)
 {
 	return 9;
 	
 }
 else if(PORTD==0b00100010)
 {
 	return 10;
 	
 }
 else if(PORTD==0b00100001)
 {
 	return 11;
 	
 }
 else if(PORTD==0b00011000)
 {
 	return 12;
 	
 }
 else if(PORTD==0b00010100)
 {
 	return 13;
 	
 }
 else if(PORTD==0b00010010)
 {
 	return 14;
 	
 }
 else if(PORTD==0b00010001)
 {
 	return 15;
 	
 } 
else
 return 1;
}
void main()
{
int press;
TRISC=0x00;
TRISD=0x0F;

PORTC=0x00; 

press=scann();
press=1;
if(press==1)
 PORTC=0xFF;
}