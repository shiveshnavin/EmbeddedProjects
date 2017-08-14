#include<pic.h>

void delay(unsigned int x){
	
	while(x-->0);
}
/* LCD [ *********** */
#define DEL1 20
#define DEL2  20

#define TRISLCD TRISD
#define LCD PORTD

#define RS RC0
#define EN RC1

#define LD0 RD0
#define LD1 RD1
#define LD2 RD2
#define LD3 RD3
#define LD4 RD4
#define LD5 RD5
#define LD6 RD6
#define LD7 RD7

void initlcd();
void cmd(unsigned int Command);
void dat(unsigned int Command);
void setLCD(int number);
void write(char * str,int line,int erase);
void scroll(char * str,int loops);
void clearlcd();

void main()
{
	
write("Yella Boy",1,1);
	
}



/*   *****************************    LCD [   **************************************************** */
void initlcd()
{

 	TRISC=0b11111100;

	TRISLCD=0x00;

	cmd(0x38); 

	cmd(0x0C); 

	cmd(0x01);
 
	cmd(0x80);

 	cmd(0x0f);

}
void clearlcd()
{
cmd(0x01);
}
void cmd(unsigned int Command)
{
	setLCD(Command);
	RS=0;
	EN=1; 
	delay(DEL1);
	EN=0;
	delay(DEL2);

}

void dat(unsigned int Command)
{
	setLCD(Command);
	
	RS=1;

	EN=1;

	delay(DEL1);

	EN=0;

	delay(DEL2);





}
void setLCD(int number)
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

//	LCD=s;

}
void write(char * str,int line,int erase)
{	
	if(erase==1)
		clearlcd();

	if(line==2)
		cmd(0xC0);
	else
		cmd(0x2);

	int i=0;
	while(str[i]!='\0')
		{
		dat(str[i]);
		i++;
		}


}


void scroll(char * str,int loops)
{	

	write(str,1,0); ;
	int loopn=0;
	int i;
	int len=0;;
	int st=0;
	int en; 
	while(str[i]!='\0')
	{	i++;
		len++;
	}	
en=len-1;
	 
	if(len>32)
	{	
		 
		char  dest [32] ;
		int startat=0;
		int endat=31;
START: 
		i=0;
		while(i++<32)
		{
			    
				delay(3000);
				cmd(0x1E); 
				

		}
 		
		i=0;
		while(i++<32)
		{ 

				delay(3000);
				cmd(0x18); 
				

		}
if(loopn++<loops)
  goto START;
	} 

		


}

 
