#include<pic.h>
#include<string.h>
#include <stdlib.h>



/******functions******/

void getlogicseq();
void startswitch();

/******EEPROM********/

void getlogic();
void setlogic();
#define EEPD 200
const char adr[]={0x00,0x04,0x08,0x0C,0x0F};
char * read_log(int devno); 

unsigned char read_eep(unsigned  int a);
void write_eep (unsigned int x, unsigned char y);

void write_log(int devno,char * logic); 

/****KEYPAD  ******/
#define TRISKEY TRISB
#define KY0 RB3 //OUTPUT
#define KY1 RB2 //OUTPUT
#define KY2 RB1 //OUTPUT
#define KY3 RB0 //OUTPUT

#define KY4 RD6 //INPUT
#define KY5 RD7 //INPUT
#define KY6 RB6 //INPUT
#define KY7 RB7 //INPUT

#define BZ RB5 //OUTPUT

void initkeypad();
void actrow(int n);
int scan();
void resetout();
void buzz(int val)
{
	if(val!=99)
	    BZ=1;
	else
		BZ=0;
}
 

/*   utils ***** */

int parselogic(char * log);
void delay(unsigned int); 
int itoaa(int value,char *ptr);
 
int done_init=0;

/******SESORS AND DEVICES******/

#define SR0 RA0
#define SR1 RA1
#define SR2 RA2
#define SR3 RC7

#define DV0 RC4
#define DV1 RC5
#define DV2 RC6
#define DV3 RA3 
 

/* LCD [ *********** */
#define DEL1 250
#define DEL2  300

#define TRISLCD TRISD
#define LCD PORTD

#define RS RD5
#define EN RD4

#define LD0 RD3
#define LD1 RD2
#define LD2 RD1
#define LD3 RD0
#define LD4 RC3
#define LD5 RC2
#define LD6 RC1
#define LD7 RC0

void initlcd();
void cmd(unsigned char Command);
void dat(unsigned char Command);
void setLCD(unsigned char number);
void write(char * str,int line,int erase);
void scroll(char * str,int loops);
void clearlcd();

/* ****** *****        MAIN    **************       MAIN        *****************       MAIN        *****  */
void start();
int f1=0, f2=0, f3=0,num;
int retm=0;
int  main()
{ 


	
	TRISKEY = 0b00001111;
 
	initlcd();	
	initkeypad();  
 	start();
		 

   
 


}

void start()
{
START:
getlogic();
 done_init=0;
   // scroll("WELCOME ! TO PROGRAMABLE HOME AUTMATN",0);
	 write("FP Home Atomn.",1,1);
		write("Press 0 to Cont.",2,0);	
	
	
			while(scan()!=0);
		 

	write("1.SWT  2.REPRG",1,1);
	write("3.RESET",2,0);
	while(1)
		{	
			 
		  num=scan();
		  buzz(num);
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
		getlogicseq();
	}
	else if(f3){	f1=0; f2=0; f3=0;
    goto START;
	 
}
		}
 

}

/*  funstions [  ************  FUNCTION  ***************  FUNCTION  ****************  FUNCTION  ********* */

#define HIGH 1
#define LOW 0
#define NEXT 2
#define REPEAT 2

		char logic_d1[5]="100";
		char logic_d2[5]="010";
		char logic_d3[5]="001";
		char logic_d4[5]="100";
		char lo[5]="0000"; 
		char plo[5]="0000"; 
     	int dev=0b0000;
    	int pdev=0b0000; 

void setlogic(){
write_log(0,logic_d1);
write_log(1,logic_d2);
write_log(2,logic_d3);
write_log(3,logic_d4);
}

void getlogic(){
if(read_eep(0xF0)!='X')
{
	write_eep(0xF0,'X');
	write("CONFIGURED !",1,1);
	delay(2000);
	return;

}
	write("READING.. !",1,1);
	delay(2000);
strcpy(logic_d1,read_log(0));
strcpy(logic_d2,read_log(1));
strcpy(logic_d3,read_log(2));
strcpy(logic_d4,read_log(3));

}


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
void init_fun()
{
	if(done_init==0)
		{
					
			TRISA=0x0F;
			ANSEL=0x0;
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
	buzz(99);
	//if(strcmp(lo,"000")!=0)
		if(strcmp(lo,plo)!=0)
			{
	 
		 	write(lo,1,1);
			 buzz(7);
			delay(3000);
			 

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
					
 
					
					
			 DV0=dev&0b0001;
			 DV1=(dev>>1)&0b0001;
			 DV2=(dev>>2)&0b0001;
		    	delay(200);
			}
  
	 
}


void getlogicseq()
{

		
	

		int num   ;
		char snum[16]=""; 
		int wf=0; //Flag to check if 1 or 2 has been pressed once
		int nf=0; //Flag to check if net has been pressed once
		int bf=0; //Flag to check if string has been reset once
		int ccount=0;
		char str[32]; 


getlogic();
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
		  buzz(num);
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
		  buzz(num);
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
		  buzz(num);
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

setlogic();
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

   				 f1=0;
				 f2=0;
				 f3=1;

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

 	TRISC=0b0000000;

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


void latch()
{
	EN=1;
	delay(250);
	EN=0;
	delay(300);
}


void _dat()
{
	RS=1;
	latch();
}

void _cmd()
{
	RS=0;
	latch();
}



void cmd(unsigned char Command)
{
	
	setLCD(Command);
	_cmd();

}

void dat(unsigned char Command)
{
	setLCD(Command);
 	_dat();





}


unsigned char getn(unsigned char c, unsigned char n)
{
  unsigned char tmp=1<<n;
  return (c & tmp)>>n;
}

void setLCD(unsigned char number)
{	   
    
					  
			LD0=getn(number,0);
			LD1=getn(number,1);
			LD2=getn(number,2);
			LD3=getn(number,3);
			LD4=getn(number,4);
			LD5=getn(number,5);
			LD6=getn(number,6);
			LD7=getn(number,7);
 

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
				return 0;
		
	actrow(2) ;	 
 
			if(	KY4==1)
				return 4;
			else if(KY5==1)
				return 5;
			else if(KY6==1)
				return 6;
			else if(KY7==1)
				return 1;
		
	actrow(3) ;	
 
			if(	KY4==1)
				return 8;
			else if(KY5==1)
				return 9;
			else if(KY6==1)
				return 10;
			else if(KY7==1)
				return 2;
		
	
	actrow(4) ;	 

			if(	KY4==1)
				return 12;
			else if(KY5==1)
				return 13;
			else if(KY6==1)
				return 14;
			else if(KY7==1)
				return 3;



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
	char logic[]="0000";
	
	char ads=adr[devno];
	
	logic[0]=read_eep(ads);
	logic[1]=read_eep(ads+1);
	logic[2]=read_eep(ads+2);
	logic[3]=read_eep(ads+3);
		
	return logic;
}

  
unsigned char  read_eep(unsigned  int a)
{     
      int d;
      EEADR=a;                //WRITING ADDRESS TO BE READ ...The PIC16F887 microcontroller has 256 locations of data EEPROM (2100H TO 21FFH)
    // Address ranges from 00h to FFh for devices having 256 bytes while for 128 bytes devices it is 00h to 7Fh.
      EEPGD=0;                  //TO SELECT DATA MEMORY
      EEIF=0;               //EEPROM INTERRUPT IS DISABLED
      RD=1;                     // TO ENABLE READ OPERATION
      WREN=0;                 // to avoid write operation
      while(RD==1);
      d=EEDAT;
      delay(EEPD); 
      return d;
}        

void write_log(int devno,char * logic)
{
	
			
	char ads=adr[devno];
	
    write_eep(ads,logic[0]);
    write_eep(ads+1,logic[1]);
	write_eep(ads+2,logic[2]);
	write_eep(ads+3,logic[3]);
		
	 
	
	

}


  
void write_eep (unsigned int x, unsigned char y)           //x is address & y is data
{
 again:
 EEPGD=0;
 EEADR=x;  
 EEDAT=y;
 WRERR=0;
 WREN=1;
 EECON2=0x55;     // WRITE SEQUENCE
 EECON2=0xAA;
 WR=1;
 while(WR==1);
 if(WRERR==1)
   goto again;
   delay(EEPD);//20000
  }