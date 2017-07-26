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
#define DEL1 1
#define DEL2 1 

void delay(unsigned int);

/* LCD [  */
void initlcd();
void cmd(unsigned int Command);
void dat(unsigned int Command);
void setLCD(int number);void write(char * str);
void scroll(char * str);
void clearlcd();

/* ] LCD    */

int  main()
{ 
	char str[]="Welcome to Emtech Foundation This is line 2 ";	char str2[]="Welcome to Emtech Foundation ";

	TRISC=0x00;
	TRISD=0x00; 	initlcd();
 

 
 //	write(str); 
  
 
  	scroll(str);	
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

/*   ]utils   **************************************************** */
/*   LCD [   **************************************************** */
void initlcd()
{


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
					  
			D0=vbool[size-1];
			D1=vbool[size-2];
			D2=vbool[size-3];
			D3=vbool[size-4];
			D4=vbool[size-5];
			D5=vbool[size-6];
			D6=vbool[size-7];
			D7=vbool[size-8];

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
		while(endat<en)
		{
			       for(int i= 0;i< 32;i++)
						{
							dest[i]=str[	startat+i];
						}

				cmd(0x1E);
			//	write(dest);
				startat++;		
				endat++;
				delay(1000);
				

		}
 		

	while(endat<en)
		{
			       for(int i= 0;i< 32;i++)
						{
							dest[i]=str[	startat+i];
						}

				cmd(0x18);
			//	write(dest);
				startat++;		
				endat++;
				delay(1000);
				

		}
goto START;
	}
	else
    	write(str);

		


}
/* ] LCD ****************************************************   */