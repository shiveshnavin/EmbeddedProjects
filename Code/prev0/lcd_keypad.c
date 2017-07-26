#include<pic.h>#include<string.h>
#include <stdlib.h>



/****KEYPAD  ******/
#define TRISKEY TRISB
#define KD0 RB0
#define KD1 RB1
#define KD2 RB2
#define KD3 RB3
#define KD4 RC2
#define KD5 RC3
#define KD6 RB6
#define KD7 RB7 

void initkeypad();
void actrow(int n);
int scan();
void resetout();
 

/*   utils ***** */
 
void delay(unsigned int);

int itoaa(int value,char *ptr);
 
 

/* LCD [ *********** */
#define DEL1 20
#define DEL2  20

#define TRISLCD TRISD
#define LCD PORTD
#define RS  RC0
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
void setLCD(int number);void write(char * str);
void scroll(char * str);
void clearlcd();

/* ******                    MAIN          *****  */

int  main()
{ 
	char str[]="Welcome to Emtech Foundation This is line 2 ";	char str2[]="Welcome to Emtech Foundation ";
 	initlcd();	
	initkeypad();
 

 int num = 321 ;
char snum[10]="AA";

// convert 123 to string [buf]
itoaa(num, snum );

  write( snum);  
while(1)
{	
  num=scan();
if(num!=99){

  itoaa(num, snum );

  write( snum);  
}
}
  //	scroll(str);	
 	while(1);


}
void delay(unsigned int x)
{

	while(x-->0);

}

/*   utils [   **************************************************** */

char * substr32(char * str,int offset)
{
	char sub[];
	for(int i= 0;i< 32;i++)
		{
			sub[i]=str[offset+i];
		}
	return sub;
	

}

int itoaa(int value,char *ptr)
     {
        int count=0,temp;
        if(ptr==NULL)
            return 0;   
        if(value==0)
        {   
            *ptr='0';
            return 1;
        }

        if(value<0)
        {
            value*=(-1);    
            *ptr++='-';
            count++;
        }
        for(temp=value;temp>0;temp/=10,ptr++);
        *ptr='\0';
        for(temp=value;temp>0;temp/=10)
        {
            *--ptr=temp%10+'0';
            count++;
        }
        return count;
     } 
/*   LCD [   **************************************************** */
void initlcd()
{

 	TRISC=0b00001100;
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
{	setLCD(Command);
	
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

}void write(char * str)
{
	clearlcd();
	int i=0;
	while(str[i]!='\0')
		{

dat(str[i]);

			if(i==15)
				{
					
				 
					
				//	cmd(0xC0);
				}
	i++;
		}


}


void scroll(char * str)
{	

	write(str);
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
goto START;
	}
	else
    	write(str);

		


}



/******************************************************/


/****KEYPAD*******************************/

void initkeypad()
{ 
 	PORTB = 0;  
	TRISKEY = 0b11000000;
	RB4=1;
}
 
int scan()
{
 	actrow(1) ;
			if(	KD4==1)
				return 1;
			else if(KD5==1)
				return 2;
			else if(KD6==1)
				return 3;
			else if(KD7==1)
				return 4;
		
	actrow(2) ;	 
 
			if(	KD4==1)
				return 5;
			else if(KD5==1)
				return 6;
			else if(KD6==1)
				return 7;
			else if(KD7==1)
				return 8;
		
	actrow(3) ;	
 
			if(	KD4==1)
				return 9;
			else if(KD5==1)
				return 10;
			else if(KD6==1)
				return 11;
			else if(KD7==1)
				return 12;
		
	
	actrow(4) ;	 

			if(	KD4==1)
				return 13;
			else if(KD5==1)
				return 14;
			else if(KD6==1)
				return 15;
			else if(KD7==1)
				return 16;



 				return 99;
	 


}


void resetout()
{
KD4=0;KD5=0;KD6=0;KD7=0;
}
void actrow(int n)
{
resetout();

 if(n==1)
	{
		KD0=1;  
	}
 else if(n==2)
	{
		KD1=1; 
	}
 else if(n==3)
	{
		KD2=1; 
	}
 else if(n==4)
	{
		KD3=1;
	}
 delay(200); 


}
 
/*******************************/