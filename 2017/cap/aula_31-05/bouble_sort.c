#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

bool comparar(int *v1, int *v2){
	if(*v1>*v2){
		return true;
	}
	return false;
}

void bouble_sort(void *array,unsigned int length, bool (*compare)(),unsigned int size_of_type){
	unsigned int pivo,pivo2=0;
	
	void *troca=malloc(size_of_type);
	bool trocou;
	
	if(!troca){
		return;
	}
	
	do{
		trocou=false;
		for(pivo=0;pivo<length-1;pivo++){
		
			if((*compare)(array+pivo,array+pivo+1)){
			
				memcpy(troca,array+pivo,size_of_type);
				memcpy(array+pivo,array+pivo+1,size_of_type);
				memcpy(array+pivo+1,troca,size_of_type);
				trocou=true;
			}
		}
	}while(trocou);

	free(troca);
}


int main(){

	int vetor[5]={4,1,5,3,0};
	int pivo,pivo2=0,tam=5,troca;
	
	bouble_sort(vetor,5, comparar,sizeof(int));



	
	for(int i=0;i<tam;i++){
		printf("%d ",vetor[i]);
	}
	printf("\n");

	return 0;
}

/*
	while(pivo2!=tam-1){
		for(pivo=0;pivo<tam-1;pivo++){
			if(vetor[pivo]>vetor[pivo+1]){
				troca=vetor[pivo];
				vetor[pivo]=vetor[pivo+1];
				vetor[pivo+1]=troca;
			}
		}
		pivo2++;
	}
	*/
