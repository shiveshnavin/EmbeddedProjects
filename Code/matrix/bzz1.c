#include<pic.h>

void delay(unsigned int x){
while(x-->0);
}
void resetout()
{
RD4=0;
RD5=0;
RD6=0;
RD7=0;
}
int scan()
{

resetout();

RD4=1;;

if(RD0==1)
{
return 1;
}
else if(RD1==1)
{
return 2;
}
else if(RD2==1)
{
return 3;
}
else if(RD3==1)
{
return 4;
}



resetout();

RD5=1;;

if(RD0==1)
{
return 5;
}
else if(RD1==1)
{
return 6;
}
else if(RD2==1)
{
return 7;
}
else if(RD3==1)
{
return 8;
}



resetout();

RD6=1;;

if(RD0==1)
{
return 9;
}
else if(RD1==1)
{
return 10;
}
else if(RD2==1)
{
return 11;
}
else if(RD3==1)
{
return 12;
}



resetout();

RD7=1;;

if(RD0==1)
{
return 13;
}
else if(RD1==1)
{
return 14;
}
else if(RD2==1)
{
return 15;
}
else if(RD3==1)
{
return 16;
}


return 0;

}
void main()
{
int press;
TRISC=0x00;
TRISD=0x0F;
int p;
int op;
PORTC=0x00;

while(1){
p=scan();

if(p==1)
{
op=0b10000000;
}
else if(p==2)
{
op=0b01000000;
}
else if(p==3)
{
op=0b00100000;
}
else if(p==4)
{
op=0b00010000;
}
else if(p==5)
{
op=0b00001000;
}
else if(p==6)
{
op=0b00000100;
}
else if(p==7)
{
op=0b00000010;
}
else if(p==8)
{
op=0b00000001;
}
else if(p==9)
{
op=0b11000000;
}
else if(p==10)
{
op=0b00110000;
}
else if(p==11)
{
op=0b00001100;
}
else if(p==12)
{
op=0b00000011;
}
else if(p==13)
{
op=0b11100000;
}
else if(p==14)
{
op=0b00011100;
}
else if(p==15)
{
op=0b00000000;
}
else if(p==16)
{
op=0b11111111;
}

 

PORTC=op;
}

}
