#include <stdio.h>

int main(){
	double valor;
	
	do{
		scanf("%lf",&valor);
		
		if(valor>0){
			printf("Positivo");
		}else{
			printf("Negativo");
		}
		
	}while(valor!=0);
	
	return 0;
}
