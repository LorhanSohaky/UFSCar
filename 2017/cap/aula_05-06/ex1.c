#include <stdio.h>
#include <stdbool.h>

bool eh_palindromo(int *vetor, int tamanho){
	int i=0;
	
	for(i=0;i<tamanho/2;i++){
		if(vetor[i]!=vetor[tamanho-1-i]){
			return false;
		}
	}
	
	return true;
}


int main(){
	int i,tam=10;
	int vetor[10];
	
	for(i=0;i<tam;i++){
		scanf("%d",&vetor[i]);	
	}
	
	if(eh_palindromo(vetor,tam)){
		printf("É palindromo\n");
	}else{
		printf("Não é palindromo\n");
	}
	
	return 0;
}
