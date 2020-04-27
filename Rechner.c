#include <stdio.h>

int Addieren(int Zahl1 , int Zahl2){
	int erg = 0;
	
	erg = Zahl1 + Zahl2;
	
	return erg;
}

int main (){

	int z1=5,z2=5,erg=0;
	erg = Addieren(z1,z2);


return 0;
}
