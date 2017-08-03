#include<pic.h>
void resetout()
{
RD4=0;
RD5=0;
RD6=0;
RD7=0;
}
int scan()
{

int c=0;
int r=0;
for(c=0;c<4;c++)
{

resetout();
if(c==0)
{
RD4=1;
r=read();
}
else if(c==1)
{

RD5=1;
r=read();

}

else if(c==2)
{

RD6=1;
r=read();


}

else if(c==3)
{

RD7=1;
r=read(); 
}

}
 

}
int  read()
{
if(RD0==1)
 return 0;
else if(RD1==1)
 return 1;
else if(RD2==1)
 return 2;
else if(RD3==1)
 return 3;

}

void main()
{
int press;
TRISC=0x00;
TRISD=0b11110000;


press=scan();


}