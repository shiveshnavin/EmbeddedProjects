#include<pic.h>#include<string.h>

#define LCD PORTD
#define RS  RC0
#define EN RC1
#define DEL1 50
#define DEL2 50 

void delay(unsigned int);
void cmd();
void dat();void write(char * str)
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
void scroll(char * str)
{
	int i;
	int len=0;;
	int st=0;
	int en;

	while(str[i]!='\0')
		len++;
	en=len-1;

	if(len>32)
		{

			char  dest [32] ;
	for(int i=0;i<32;i++)
	{
		dest[i]=str[st+i];
	}
	write(dest);
while(st<en&&0){
		
			char  * dest ;
			
			for(int i=0;i<32;i++)
	{
		dest[i]=str[st+i];
	}
 			
		write(st);			
st++;
delay(1000);			
}			
		}
	else
		write(str);

		


}
int  main()
{ 
	char str[]="welcome to EMTECH FOUNDATION CH FOUNDATION CH FOUNDATION";

	TRISC=0x00;
	TRISD=0x00;
	LCD=0x38;
	cmd();
	LCD=0x0C;
	cmd();
	LCD=0x01;
	cmd();
	LCD=0x80;
	
	LCD=0b10000000;
	
	cmd();



	char  dest [32] ;
	int st=1;
	for(int i=0;i<25;i++)
	{
		dest[i]=str[st+i];
	}
//	write(dest);
LCD='a';
dat();


//	scroll(str);	
 	while(1);


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