#include<pic.h>

void main()
{
	
	
	write_eep(adr[0],'X');
	char x=read_eep(adr[0]);
write("Data Wrote",1,1);
	delay(1000);
 
	dat(x);
	delay(5000);
write("Data READ",1,1);
	delay(1000);
	
	}