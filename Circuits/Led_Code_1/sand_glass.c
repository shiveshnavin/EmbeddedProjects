#include<pic.h>


void delay(unsigned int x)
{

while(x-->0);

}

void set(int loop)
{
	loop++;
	if(loop>1){
		RC0=0b1;
	}
	if(loop>2){
		RC1=0xF;
	}
	if(loop>3){
		RC2=0xF;
	}
	if(loop>4){
		RC3=0xF;
	}
	if(loop>5){
		RC4=0xF;
	}
	if(loop>6){
		RC5=0xF;
	}
	if(loop>7){
		RC6=0xF;	
	} 
}
void main()
{
	int px=0b10000000;
	int c=0;
	int d=0;
	TRISC=0x00;


	for(c=0;c<8;c++)
	{
	
	
	
	
		for(d=0;d<8-c;d++)
		{
			delay(5000);
			PORTC=px;
			px=px>>1;
			set(c);
		}
		 px=0b10000000;
	
	}



}
