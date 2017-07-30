#include<pic.h>
#include<string.h>
#include <stdlib.h>



/******functions******/

void getlogicseq();
void startswitch();

/******EEPROM********/


const char adr[]={0x00,0x04,0x08,0x0C,0x0F};
char * read_log(int devno);
char read_eep(unsigned char a);
void write_log(int devno,char * logic);
void write_eep(unsigned char a,unsigned char d);

/****KEYPAD  ******/
#define TRISKEY TRISB
#define KY0 RB0 //OUTPUT
#define KY1 RB1 //OUTPUT
#define KY2 RB2 //OUTPUT
#define KY3 RB3 //OUTPUT

#define KY4 RD6 //INPUT
#define KY5 RD7 //INPUT
#define KY6 RB6 //INPUT
#define KY7 RB7 //INPUT

void initkeypad();
void actrow(int n);
int scan();
void resetout();
 

/*   utils ***** */

int parselogic(char * log);
void delay(unsigned int); 
int itoaa(int value,char *ptr);
 

/******SESORS AND DEVICES******/

#define SR0 RC3
#define SR1 RC4
#define SR2 RC5
#define SR3 RC7

#define DV0 RA0
#define DV1 RA1
#define DV2 RA2
#define DV3 RA3
#define DPORT PORTA
#define TRISDP TRISA
 

/* LCD [ *********** */
#define DEL1 20
#define DEL2  20

#define TRISLCD TRISD
#define LCD PORTD

#define RS RC0
#define EN RB5

#define LD0 RD0
#define LD1 RD1
#define LD2 RD2
#define LD3 RD3
#define LD4 RD4
#define LD5 RD5
#define LD6 RC1
#define LD7 RC2

void initlcd();
void cmd(unsigned int Command);
void dat(unsigned int Command);
void setLCD(int number);
void write(char * str,int line,int erase);
void scroll(char * str,int loops);
void clearlcd();

/* ****** *****        MAIN    **************       MAIN        *****************       MAIN        *****  */

int retm=0;
int  main()
{ 


	
	TRISKEY = 0b00001111;
 
	initlcd();	
	initkeypad();
 	/*
 	if(scan()==0)
		write("WWW",1,1);
	else
		write("Ops",1,1);*/
 	while(1){
				
  getlogicseq();	
			}

 
 


}

/*  funstions [  ************  FUNCTION  ***************  FUNCTION  ****************  FUNCTION  ********* */

#define HIGH 1
#define LOW 0
#define NEXT 2
#define REPEAT 2

		char logic_d1[5]="100";
		char logic_d2[5]="010";
		char logic_d3[5]="010";
		char logic_d4[5]="100";
		char lo[5]="0000"; 
		char plo[5]="0000"; 
     	int dev=0b0000;
    	int pdev=0b0000; 

int check(char * input,char * logic)
{
 
	int i=0;

    for(i=0;i<4;i++)
		{
			if(input[i]=='0'&&logic[i]=='1')
				return 0;
		}
	return 1;
}
int done_init=0;
void init_fun()
{
	if(done_init==0)
		{
					
			TRISA=0b110000;
			DPORT=0x0;
			done_init=1;
		    write("Sensing...",1,1);
		}
} 
void startswitch()
{	
	init_fun(); 
	
	
	strcpy(plo,lo);
	strcpy(lo,"000");;
	if(SR0==1)
		lo[0]='1';	
	if(SR1==1)
		lo[1]='1';	
	if(SR2==1)
		lo[2]='1';	
  
 
   pdev=dev;	
   dev=0b0000;	
	write("Press 2 to REPRG",2,0);
	//if(strcmp(lo,"000")!=0)
		if(strcmp(lo,plo)!=0)
			{
	 
		 	write(lo,1,1);
		
			 

				if(check(lo,logic_d1))
					dev=dev|0b0001;	
				else
					dev=dev&0b0110;

				if(check(lo,logic_d2))
					dev=dev|0b0010;	
				else
					dev=dev&0b0101;
					

				if(check(lo,logic_d3))
					dev=dev|0b0100;	
				else
					dev=dev&0b0011;
					
 
					
					
				DPORT=dev;
			}
   return;
	 
}


int f1=0, f2=0, f3=0;
void getlogicseq()
{

		
	    scroll("WELCOME ! TO PROGRAMABLE HOME AUTMATN",0);
		
		 

		int num   ;
		char snum[16]=""; 
		int wf=0; //Flag to check if 1 or 2 has been pressed once
		int nf=0; //Flag to check if net has been pressed once
		int bf=0; //Flag to check if string has been reset once
		int ccount=0;
		char str[32]; 


	write("1.SWT  2.REPRG",1,1);
	write("3.RESET",2,0);
	while(1)
		{	
				if(retm==1)
					{
						
						retm=0;
						f1=0; f2=0; f3=0;
						return;
					}
		  num=scan();
			if(num==1)
			{
			     f1=1;
				 f2=0;
				 f3=0;
			}
				if(num==2)
			{
			     f1=0;
				 f2=1;
				 f3=0;
			}
				if(num==3)
			{
			     f1=0;
				 f2=0;
				 f3=1;
				 retm=1;  	
			}
			
	if(f1){ 
		startswitch();
	}
	else if(f2){	f1=0; f2=0; f3=0;
		goto START_SEQ;
	}
	else if(f3){	f1=0; f2=0; f3=0;
		retm=1;
	 
}
		}


START_SEQ:
write("Press 2. - Skip for Device",1,1);
delay(5000);
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
							  write("---",2,0);
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
		if(ccount>=3)
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
							  write("---",2,0);
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
		if(ccount>=3)
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
							  write("---",2,0);
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
		if(ccount>=3)
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
/*
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
	}*/

 

}


/*   ***********************   utils [   **************************************************** */
int parselogic(char * log)
{
	int dat=0b0000;

	if(strcmp(log,"0000")==0)
		dat=0b0000;
	else if(strcmp(log,"0001")==0)
		dat=0b0001;	 
	else if(strcmp(log,"0010")==0)
		dat=0b0010;	 

	else if(strcmp(log,"0011")==0)
		dat=0b0011;	 

	else if(strcmp(log,"0100")==0)
		dat=0b0100;	 

	else if(strcmp(log,"0101")==0)
		dat=0b0101;	 

	else if(strcmp(log,"0110")==0)
		dat=0b0110;	 

	else if(strcmp(log,"0111")==0)
		dat=0b0111;	 

	else if(strcmp(log,"1000")==0)
		dat=0b1000;	 

	else if(strcmp(log,"1001")==0)
		dat=0b1001;	 

	else if(strcmp(log,"1010")==0)
		dat=0b1010;	 

	else if(strcmp(log,"1011")==0)
		dat=0b1011;	 

	else if(strcmp(log,"1100")==0)
		dat=0b1101;	 

	else if(strcmp(log,"1101")==0)
		dat=0b1000;	 

	else if(strcmp(log,"1110")==0)
		dat=0b1110;	 

	else if(strcmp(log,"1111")==0)
		dat=0b1111;	 


	return dat;	


}
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
/*   *****************************    LCD [   **************************************************** */
void initlcd()
{

 	TRISC=0b111000;

	TRISLCD=0b11000000;

	cmd(0x38); 

	cmd(0x0C); 

	cmd(0x01);
 
	cmd(0x80);

 	//cmd(0x0f);

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
	TRISKEY = 0b11010000;
 
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
				return 3;
		
	actrow(2) ;	 
 
			if(	KY4==1)
				return 4;
			else if(KY5==1)
				return 5;
			else if(KY6==1)
				return 6;
			else if(KY7==1)
				return 7;
		
	actrow(3) ;	
 
			if(	KY4==1)
				return 8;
			else if(KY5==1)
				return 9;
			else if(KY6==1)
				return 10;
			else if(KY7==1)
				return 11;
		
	
	actrow(4) ;	 

			if(	KY4==1)
				return 12;
			else if(KY5==1)
				return 13;
			else if(KY6==1)
				return 14;
			else if(KY7==1)
				return 15;



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
 
/***************     EEPROM           ****************/

char * read_log(int devno)
{
	char logic[]="";
	
	
	return logic;
}

char read_eep(unsigned char a)
{
	
	char d;
	EEPGD=0;
	EEADR=a;
	WREN=0;
	RD=1;
	while(RD==1)
		d=EEDAT;
	
	return d;

}


void write_log(int devno,char * logic)
{
	
	
	
	

}
void write_eep(unsigned char a,unsigned char d)
{

	EEPGD=0;
	EEADR=a;
	EEDAT=d;

	WREN=1;
	WRERR=0; 
	//EECON1=0b00000100;

	EECON2=0x55;
	EECON2=0xAA;
	//EECON1=0b00000110;
	WR=1;
	while(WR==1)
		WREN=0;

	if(WRERR==1)
		write_eep(a,d);
}