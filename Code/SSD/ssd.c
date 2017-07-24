#include<pic.h> 
void main()
{
int press;
int max[]={
0b10111111,
0b10000110,
0b11011011,
0b11001111,
0b11100110,
0b11101101,
0b11111101,
0b10000111,
0b11111111,
0b11101111
};

int i=0;
int x=10000;
TRISC=0x00; 
for(i=0;i<10;i++){
PORTC=max[i];;

while(x-->0);
x=10000;
}


}