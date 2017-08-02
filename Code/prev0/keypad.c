#include<pic.h>#include<string.h>


/****KEYPAD  ******/
#define TRISKEY TRISB
#define KD0 RB0
#define KD1 RB1
#define KD2 RB2
#define KD3 RB3
#define KD4 RB4
#define KD5 RB5
#define KD6 RB6
#define KD7 RB7 

void initkeypad();
void clock();
int scan();
void resetout();

/****KEYPAD  ******/
void main()
{



}

/****KEYPAD*************************  ******/

void initkeypad()
{ 
	TRISK = 0x0F;
}
 
int scan()
{
	clock();
	if(KD0==1)
		{
			if(	KD4==1)
				return '1';
			else if(KD5==1)
				return '2';
			else if(KD6==1)
				return '3';
			else if(KD7==1)
				return '5';
			else
 				return 99;
		}
	else if(KD1==1)
		{
			if(	KD4==1)
				return 1;
			else if(KD5==1)
				return 2;
			else if(KD6==1)
				return 2;
			else if(KD7==1)
				return 2;
			else
 				return 99;
		}
	else if(KD2==1)
		{
			if(	KD4==1)
				return 1;
			else if(KD5==1)
				return 2;
			else if(KD6==1)
				return 2;
			else if(KD7==1)
				return 2;
			else
 				return 99;
		}

	else if(KD3==1)
		{
			if(	KD4==1)
				return 1;
			else if(KD5==1)
				return 2;
			else if(KD6==1)
				return 2;
			else if(KD7==1)
				return 2;
			else
 				return 99;
		}
	else
		return 99;



}


void resetout()
{
KD4=0;KD5=0;KD6=0;KD7=0;
}
void clock()
{
 
KD4=1; delay(100);resetout();
KD5=1; delay(100);resetout();
KD6=1; delay(100);resetout();
KD7=1; delay(100);resetout(); 

}
 
/****KEYPAD*********************  ******/