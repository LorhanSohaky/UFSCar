#include <stdio.h>

int main(){
	int ano;
	
	scanf("%d",&ano);
	
	if(ano%400==0 || ano%4==0 && ano%100!=0){
		printf("É ano bissexto\n");
	}else{
		printf("Não é ano bissexto\n");	
	}
	return 0;
}
