#include<pic.h>#include<string.h>

#define D0 RD0
#define D1 RD1
#define D2 RD2
#define D3 RD3
#define D4 RD4
#define D5 RD5
#define D6 RD6
#define D7 RD7

#define LCD PORTD
#define RS  RC0
#define EN RC1
#define DEL1 50
#define DEL2 50 

void delay(unsigned int);
void cmd();
void dat();

void setLCD(int s)
{	

	 
    int number = s; /* signed */
	const int size=8*sizeof(int);
    int vbool[8*sizeof(int)];
    int i;; /* signed */  



        for (i = 0; i <size; i++)
        {
            vbool[i] = number<<i < 0;    
        }  
		
 int z=vbool[0];

D0=vbool[size-1];
D1=vbool[size-2];
D2=vbool[size-3];
D3=vbool[size-4];
D4=vbool[size-5];
D5=vbool[size-6];
D6=vbool[size-7];
D7=vbool[size-8];

//	LCD=s;

}
void write(char * str)
{

	int i=0;
	while(str[i]!='\0')
		{

			setLCD(str[i++]);	
			dat();

			if(i==15)
				{
					
					setLCD(0xC0);
					
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
	setLCD(0x38);
	cmd();
	setLCD(0x0C);
	cmd();
	setLCD(0x01);
	cmd();
	setLCD(0x80);
	
	setLCD(0b10000000);
	
	cmd();



	char  dest [32] ;
	int st=1;
	for(int i=0;i<25;i++)
	{
		dest[i]=str[st+i];
	}
//	write(dest);
setLCD('a');
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