#include<pic.h>

#define k0 RD0
#define k1 RD1
#define k2 RD2
#define k3 RD3
#define k4 RD4
#define k5 RD5
#define k6 RD6
#define k7 RD7
void main()
{
int ctr=0;
TRISC=0x00;
TRISD=0xFF;

PORTC=0x00;
PORTD=0x00;

while(1){

if(k0==1)
{
while(k0);
if(ctr==0)
{
ctr=1;
}
else{
ctr=0;
}


}

RC0=ctr;
}





}