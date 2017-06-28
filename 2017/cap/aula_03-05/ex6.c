#include <stdio.h>

int main(){
	int valor;
	double fatorial=1;
	
	scanf("%d",&valor);
	
	printf("%d!=",valor);
	
	while(valor>=1){
		printf("%d*",valor);
		fatorial*=valor;
		valor--;
	}
	
	printf("\b=%.0lf\n",fatorial);

	return 0;
}
