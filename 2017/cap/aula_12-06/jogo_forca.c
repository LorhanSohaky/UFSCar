#include <stdio.h>
#include <stdbool.h>
#include <ctype.h>
#include <string.h>
#include <locale.h>
#include <stdlib.h>

char *init_palavra(char *texto_palavra);
char *init_mascara(unsigned int tamanho_palavra);

void exibir_boneco(unsigned int quantidade_erros);
void exibir_mascara(char *mascara);
void exibir_resultado(bool ganhou);

bool existe_letra_na_palavra(char letra, char *palavra);

void substituir_letra_na_mascara(char letra,char *mascara, char *palavra);

void limpar_tela(void);

int main(int argc, char *argv[]){
	setlocale(LC_ALL,"PORTUGUESE");

	char *palavra;
	char *mascara;
	char letra;
	
	unsigned int quantidade_erros=0;
	bool ganhou=false;
	
	palavra=init_palavra(argv[1]);
	mascara=init_mascara(strlen(palavra));
	
	do{
		limpar_tela();
		
		exibir_boneco(quantidade_erros);
		printf("\n");
		
		exibir_mascara(mascara);
		printf("\n");
		
		printf("Digite uma letra:");
		scanf(" %c",&letra);
		
		letra=toupper(letra);
		if(existe_letra_na_palavra( letra, palavra)){
			substituir_letra_na_mascara( letra, mascara, palavra);
		}else{
			quantidade_erros++;
		}
		
		if(!strcmp(palavra,mascara)){
			ganhou=true;
		}
	}while(quantidade_erros<6 && ganhou==false);
	
	limpar_tela();
	exibir_boneco(quantidade_erros);
	printf("\n");
		
	exibir_mascara(mascara);
	printf("\n");
	exibir_resultado(ganhou);
	
	free(palavra);
	free(mascara);
	
	return 0;
}

char *init_palavra(char *texto_palavra){
	char *palavra=(char *)malloc(sizeof(char)*(strlen(texto_palavra)+1));
	
	strcpy(palavra,texto_palavra);
	
	return palavra;
}

char *init_mascara(unsigned int tamanho_palavra){
	unsigned int i;
	
	char *mascara=(char *)malloc(sizeof(char)*(tamanho_palavra+1));
	
	for(i=0;i<tamanho_palavra;i++){
		mascara[i]='_';
	}
	
	mascara[i]='\0';
	
	return mascara;
}

void exibir_resultado(bool ganhou){
	if(ganhou){
		printf("VOCÊ GANHOU!\n");
	}else{
		printf("VOCÊ É UM BOSTA!\n");
	}
}

void substituir_letra_na_mascara(char letra,char *mascara, char *palavra){
	unsigned int i;
	for(i=0;i<strlen(palavra);i++){
		if(letra==palavra[i]){
			mascara[i]=letra;
		}
	}
	
}

bool existe_letra_na_palavra(char letra, char *palavra){
	unsigned int i;
	
	for(i=0;i<strlen(palavra);i++){
		if(letra==palavra[i]){
			return true;
		}
	}
	
	return false;
}

void exibir_mascara(char *mascara){
	unsigned int i;
	
	for(i=0;i<strlen(mascara);i++){
		printf("%c ",mascara[i]);
	}
	
}

void exibir_boneco(unsigned int quantidade_erros){

	switch(quantidade_erros) {
		case 1:
			printf("\n╔═══════════╗");
			printf("\n║          ***");
			printf("\n║         *   *");
			printf("\n║          ***");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			break;
		case 2:
			printf("\n╔═══════════╗");
			printf("\n║          ***");
			printf("\n║         *   *");
			printf("\n║          ***");
			printf("\n║           |");
			printf("\n║           |");
			printf("\n║           |");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			break;
		case 3:
			printf("\n╔═══════════╗");
			printf("\n║          ***");
			printf("\n║         *   *");
			printf("\n║          ***");
			printf("\n║          /|");
			printf("\n║         / |");
			printf("\n║           |");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			break;
		case 4:
			printf("\n╔═══════════╗");
			printf("\n║          ***");
			printf("\n║         *   *");
			printf("\n║          ***");
			printf("\n║          /|\\");
			printf("\n║         / | \\");
			printf("\n║           |");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			break;
		case 5:
			printf("\n╔═══════════╗");
			printf("\n║          ***");
			printf("\n║         *   *");
			printf("\n║          ***");
			printf("\n║          /|\\");
			printf("\n║         / | \\");
			printf("\n║           |");
			printf("\n║          /");
			printf("\n║         /");
			printf("\n║");
			printf("\n║");
			break;
		case 6:
			printf("\n╔═══════════╗");
			printf("\n║          ***");
			printf("\n║         *   *");
			printf("\n║          ***");
			printf("\n║          /|\\");
			printf("\n║         / | \\");
			printf("\n║           |");
			printf("\n║          / \\");
			printf("\n║         /   \\");
			printf("\n║");
			printf("\n║");
			break;
		default:
			printf("\n╔═══════════╗");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			printf("\n║");
			break;
	}
}

void limpar_tela(void){
	for(unsigned int i=0;i<50;i++){
		printf("\n");
	}
}


