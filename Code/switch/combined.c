#include<pic.h>

void blink()
{
TRISC=0x00;
PORTC=0x00;
delay(20000);
PORTC=0XFF;
delay(20000);
}








void main()
{


}