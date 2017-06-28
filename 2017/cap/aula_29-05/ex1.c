#include <stdio.h>
#include <math.h>

long long unsigned int fatorial(unsigned int valor);

double rad_to_deg(double angulo);



int main(){
	int fat=fatorial(3);
	double ang=rad_to_deg(2*M_PI);
	printf("%d %lf\n",fat,ang);
	return 0;
}


long long unsigned int fatorial(unsigned int valor){
	long long unsigned int i,fatorial=1;
	
	for(i=1;i<=valor;i++){
		fatorial*=i;
	}
	
	return fatorial;
}

double rad_to_deg(double angulo){
	return 360*angulo/(2*M_PI);
}




