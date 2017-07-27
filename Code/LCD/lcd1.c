#include<pic.h>
#include<string.h>
#include <stdlib.h>



/******functions******/

void getlogicseq();


/****KEYPAD  ******/
#define TRISKEY TRISB
#define KY0 RB0
#define KY1 RB1
#define KY2 RB2
#define KY3 RB3
#define KY4 RC2
#define KY5 RC3
#define KY6 RB6
#define KY7 RB7 

void initkeypad();
void actrow(int n);
int scan();
void resetout();
 

/*   utils ***** */
 
void delay(unsigned int); 
int itoaa(int value,char *ptr);
 

/******SESORS AND DEVICES******/

#define SR0 RE0;
#define SR1 RE1;
#define SR2 RE2;
#define SR3 RE4;

#define DV0 RC3;
#define DV1 RC4;
#define DV3 RC5;
#define DV4 RC6;

 

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

/* ****** *****        MAIN    **************       MAIN        *****************       MAIN        *****  */

int  main()
{ 



 
	initlcd();	
	initkeypad();
 	
 

 	while(1){
				getlogicseq();	
			}





}

/*  funstions [  ************  FUNCTION  ***************  FUNCTION  ****************  FUNCTION  ********* */
#define HIGH 1
#define LOW 0
#define NEXT 2
#define REPEAT 2
void getlogicseq()
{
		char logic_d1[5]="1001";
		char logic_d2[5]="1011";
		char logic_d3[5]="1111";
		char logic_d4[5]="1010";


	    scroll("WELCOME ! TO PROGRAMABLE HOME AUTMATN",0);
		
		 

		int num   ;
		char snum[16]=""; 
		int wf=0; //Flag to check if 1 or 2 has been pressed once
		int nf=0; //Flag to check if net has been pressed once
		int bf=0; //Flag to check if string has been reset once
		int ccount=0;
		char str[32]; 
START_SEQ:
//////////////////////DEVICE1
		wf=0;ccount=0;
	    strcpy(str,"Enter Logic DEV1:  "); 
		write(str,1,1); 
		write(logic_d1,2,0);
		
		while(1)
		{	
		  num=scan();
				if(num==HIGH||num==LOW){
					if(wf==0)
						{	  
							  if(ccount==0)	
                              strcpy(logic_d1,"");	
							  write("----",2,0);
							  itoaa(num, snum);
							  strcat(logic_d1,snum);	
							  write( logic_d1,2,0); ;  
							  wf=1;
							  ccount++;	
						}		 		 
				}
				else{
					wf=0;
				}
		if(ccount>3)
			break;
		
	
	if(num==NEXT)
		{	
			if(nf==0){		
					nf=1;
					break;
					}
		}
	else if(num==99){
			nf=0;
		}
	}

//////////////////////DEVICE2
		wf=0;ccount=0;
	    strcpy(str,"Enter Logic DEV2:  "); 
		write(str,1,1); 
		write(logic_d2,2,0);
	
		while(1)
		{	
		  num=scan();
				if(num==HIGH||num==LOW){
					if(wf==0)
						{	  if(ccount==0)
                              strcpy(logic_d2,"");
							  write("----",2,0);
							  itoaa(num, snum);
							  strcat(logic_d2,snum);	
							  write( logic_d2,2,0); ;  
							  wf=1;
							  ccount++;	
						}		 		 
				}
				else{
					wf=0;
				}
		if(ccount>3)
			break;
	
	if(num==NEXT)
		{	
			if(nf==0){		
					nf=1;
					break;
					}
		}
	else if(num==99){
			nf=0;
		}
	}

//////////////////////DEVICE3
		wf=0;ccount=0;
	    strcpy(str,"Enter Logic DEV3:  "); 
		write(str,1,1); 
		write(logic_d3,2,0);
		
		while(1)
		{	
		  num=scan();
				if(num==HIGH||num==LOW){
					if(wf==0)
						{	  if(ccount==0)
							  strcpy(logic_d3,"");
							  write("----",2,0);
							  itoaa(num, snum);
							  strcat(logic_d3,snum);	
							  write( logic_d3,2,0); ;  
							  wf=1;
							  ccount++;	
						}		 		 
				}
				else{
					wf=0;
				}
		if(ccount>3)
			break;
	
	if(num==NEXT)
		{	
			if(nf==0){		
					nf=1;
					break;
					}
		}
	else if(num==99){
			nf=0;
		}
	}


//////////////////////DEVICE4
		wf=0;ccount=0;
	    strcpy(str,"Enter Logic DEV4:  "); 
		write(str,1,1); 
		write(logic_d4,2,0);
	
		while(1)
		{	
		  num=scan();
				if(num==HIGH||num==LOW){
					if(wf==0)
						{	  
							  if(ccount==0)
						      strcpy(logic_d4,"");
							  write("----",2,0);
							  itoaa(num, snum);
							  strcat(logic_d4,snum);	
							  write( logic_d4,2,0); ;  
							  wf=1;
							  ccount++;	
						}		 		 
				}
				else{
					wf=0;
				}
		if(ccount>3)
			break;
	
	if(num==NEXT)
		{	
			if(nf==0){		
					nf=1;
					break;
					}
		}
	else if(num==99){
			nf=0;
		}
	}
		
	goto START_SEQ;

}


/*   utils [   **************************************************** */
void delay(unsigned int x)
{
	while(x-->0);
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

 

/****KEYPAD*******************************/

void initkeypad()
{ 
 	PORTB = 0;  
	TRISKEY = 0b11000000;
 
}
 
int scan()
{
 	actrow(1) ;
			if(	KY4==1)
				return 0;
			else if(KY5==1)
				return 1;
			else if(KY6==1)
				return 2;
			else if(KY7==1)
				return 4;
		
	actrow(2) ;	 
 
			if(	KY4==1)
				return 5;
			else if(KY5==1)
				return 6;
			else if(KY6==1)
				return 7;
			else if(KY7==1)
				return 8;
		
	actrow(3) ;	
 
			if(	KY4==1)
				return 9;
			else if(KY5==1)
				return 10;
			else if(KY6==1)
				return 11;
			else if(KY7==1)
				return 12;
		
	
	actrow(4) ;	 

			if(	KY4==1)
				return 13;
			else if(KY5==1)
				return 14;
			else if(KY6==1)
				return 15;
			else if(KY7==1)
				return 16;



 				return 99;
	 


}


void resetout()
{
		KY4=0;KY5=0;KY6=0;KY7=0;
}
void actrow(int n)
{
		resetout();
		
		 if(n==1)
			{
				KY0=1;  
			}
		 else if(n==2)
			{
				KY1=1; 
			}
		 else if(n==3)
			{
				KY2=1; 
			}
		 else if(n==4)
			{
				KY3=1;
			}
		 delay(200); 


}
 
/*******************************/