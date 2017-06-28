#include <stdio.h>
#include <string.h>
#include <locale.h>
#include <ctype.h>

typedef struct{
	char nome[100];
	float preco;
	char tipo;
} vinho;

int main(){
	setlocale(LC_ALL,NULL);
	
	vinho input, mais_caro;
	
	mais_caro.preco=0;
	mais_caro.nome[0]='\0';
	mais_caro.tipo='\0';
	
	do{
		printf("Digite o nome:");
		scanf(" %[^\n]s",input.nome);
		
		if(!strcmp("FIM",input.nome)){
			break;
		}
		
		printf("Digite o preço:");
		scanf("%f",&input.preco);
		
		printf("Digite o tipo:");
		scanf(" %c",&input.tipo);
		
		if(input.preco>mais_caro.preco){
			mais_caro=input;
		}
	}while(1);
	
	printf("Nome:%s\nPreço: R$%.2f\nTipo:%c\n",mais_caro.nome,mais_caro.preco,mais_caro.tipo);

	return 0;
}

