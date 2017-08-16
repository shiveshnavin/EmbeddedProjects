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
void setlcd(unsigned int number);
void clearlcd();
void cmd();
void latch();
void dat();



void main()
{
	TRISB=0x00;
	PORTB=0x00;
	
	TRISD=0x00;
	TRISC=0x00;

	PORTC=0x00;
	PORTD=0x00;

	setlcd(0x38);
	cmd();


	


	while(1);

}



void setlcd(unsigned int number)
{	  
	const int size=8*sizeof(int);
    int vbool[8*sizeof(int)];
    int i;; 
 
        for (i = 0; i <size; i++)
        {
            vbool[i] = number<<i < 0;    
        }  
					  
			LD0=vbool[size-1];
			LD1=vbool[size-2];
			LD2=vbool[size-3];
			LD3=vbool[size-4];
			LD4=vbool[size-5];
			LD5=vbool[size-6];
			LD6=vbool[size-7];
			LD7=vbool[size-8];
 

}


void latch()
{
	EN=1;
	delay(150);
	EN=0;
	delay(200);
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