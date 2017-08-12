#include<pic.h>#include<string.h>

#define LCD PORTB
#define RS  RD0
#define EN RD1
#define DEL1 50
#define DEL2 50 

void delay(unsigned int);
void cmd();
void dat();
void txr(); void write(char * str)
{

	int i=0;
	while(str[i]!='\0')
		{

			LCD=str[i++];	
			dat();

			if(i==15)
				{
					
						LCD=0xC0;
					
						cmd();
				}
		}


}


void  main()
{ 
	char str[]="welcome to EMTECH FOUNDATION CH FOUNDATION CH FOUNDATION";

	TRISB=0x00;
	TRISC=0x80;

	TRISD=0x00;
	SPBRG=25;
	LCD=0x38;
	cmd();
	LCD=0x0C;  
	cmd();
	LCD=0x01;
	cmd();
	LCD=0x80;
	
	cmd(); 

 
 

	txr();
 	while(1);
}

void txr()
{
	char ch;
	TXSTA=0x24;
	RCSTA=0x90;
	write("RECIEVEING");

	RCIF=0;
	while(RCIF==0);
	 ch=RCREG;
	LCD=0x80;
	
	cmd();
	LCD=0x80;
	dat();
	LCD=0x01;
	dat();	

	while(TXIF==0);
//	write("RECIEED");


	LCD=ch;
	dat();
	 


return;
}
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