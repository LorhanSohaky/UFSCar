#include <stdio.h>

void imprimir(int *v,int tamanho);

int main(){
	int vetor[3],i;
	
	for(i=0;i<3;i++){
		scanf("%d",&vetor[i]);
	}
	
	imprimir(vetor,3);
		
	return 0;
}

void imprimir(int *v,int tamanho){
	unsigned int i;
	
	for(i=0;i<tamanho;i++){
		printf("%d ",v[i]);                                                                           
	}
	printf("\n");
}
