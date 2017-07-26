#include<pic.h>#include<string.h>
#include <stdlib.h>


/*   utils [   **************************************************** */
 
void delay(unsigned int);

int itoaa(int value,char *ptr);

/*   ]utils   **************************************************** */
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

/* ] LCD  ***********  */

int  main()
{ 
	char str[]="Welcome to Emtech Foundation This is line 2 ";	char str2[]="Welcome to Emtech Foundation ";
 	initlcd();
 

 float num = 321.01;
char snum[10]="AA";

// convert 123 to string [buf]
itoaa(num, snum );

  write( snum +str2);  

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
/*   ]utils   **************************************************** */
/*   LCD [   **************************************************** */
void initlcd()
{

 	TRISC=0x00;
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



/* ] LCD ****************************************************   */