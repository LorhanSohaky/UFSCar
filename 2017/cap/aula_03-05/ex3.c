#include <stdio.h>

int main(){
	int numero,soma=0;
	
	do{
		scanf("%d",&numero);
		if(numero<=0){
			break;
		}else{
			soma+=numero;
		}
	}while(1);
	
	printf("Soma=%d\n",soma);
	
	return 0;
}
