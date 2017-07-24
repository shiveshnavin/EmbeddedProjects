#include<pic.h>

#define LCD PORTC
#define RS  RD0
#define EN RD1
#define DEL1 50
#define DEL2 50



void delay(unsigned int x)
{

	while(x-->0);

}

void cmd()
{
	RS=0;
	EN=1;
	delay(DEL1);
	EN=0;
	delay(DEL2);

}
void dat()
{
	RS=1;
	EN=1;
	delay(DEL1);
	EN=0;
	delay(DEL2);


}

void main()
{

	TRISC=0x00;
	TRISD=0x00;
	LCD=0x38;

}