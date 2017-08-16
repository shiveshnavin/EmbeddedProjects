

	/**** Display 0 to 9 on 7-segment display connected at another
          microcontroller sing UART (transmitter) ****/


#include<pic.h>

void delay(unsigned long int x)
{
while(x--);
}

void main()
{
TXSTA=0X24;
SPBRG=25;
SPEN=1;
char a[10]={0xBF,0X86,0XDB,0XCF,0XE6,0XED,0XFD,0X87,0XFF,0XEF};

while(1)
{
for(int i=0;i<10;i++)
{
TXIF=0;
TXREG=a[i];
while(TXIF==0);
delay(10000);
}
}
}