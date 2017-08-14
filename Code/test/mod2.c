#include<pic.h>

/* LCD [ *********** */
#define DEL1 200
#define DEL2  200

void delay(unsigned int i)
{
	while(i-->0);
}
#define TRISLCD TRISD
#define LCD PORTD

#define RS RD5
#define EN RD4

#define LD0 RD3
#define LD1 RD2
#define LD2 RD1
#define LD3 RD0
#define LD4 RC3
#define LD5 RC2
#define LD6 RC1
#define LD7 RC0

void initlcd();
void setlcd(unsigned char number);
void clearlcd();
void cmd();
void latch();
void dat();



void main()
{
 	TRISC=0b0000000;

	TRISLCD=0b11000000;
 	
	setlcd(0x38);
	cmd();
	setlcd(0x0C);
 	cmd( ); 
	setlcd(0x01);
 	cmd( ); 
	setlcd(0x80);
 	cmd( ); 
	
	setlcd('A');
	dat();
	 
 
	while(1);

}



unsigned char getn(unsigned char c, unsigned char n)
{
  unsigned char tmp=1<<n;
  return (c & tmp)>>n;
}



void setlcd(unsigned char number)
{	   
    
					  
			LD0=getn(number,0);
			LD1=getn(number,1);
			LD2=getn(number,2);
			LD3=getn(number,3);
			LD4=getn(number,4);
			LD5=getn(number,5);
			LD6=getn(number,6);
			LD7=getn(number,7);
 

}


void latch()
{
	EN=1;
	delay(250);
	EN=0;
	delay(300);
}


void dat()
{
	RS=1;
	latch();
}

void cmd()
{
	RS=0;
	latch();
}