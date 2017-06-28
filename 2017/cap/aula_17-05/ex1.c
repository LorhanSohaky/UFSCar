#include <stdio.h>
#include <stdbool.h>


int comprimento(char *string){
	unsigned int quantidade=0;
	
	while(*string!='\0'){
		quantidade++;
		string++;
	}
	
	return quantidade;
}

char *maiuscula(char *string){
	unsigned int tamanho=comprimento(string);
	unsigned int i;
	for(i=0;i<tamanho;i++,string++){
		if(*string>96){
			*string-=32;
		}
	}

	return string;
}

char *intercala(char *string){
	unsigned int tamanho=comprimento(string);
	unsigned int i;
	bool foi=false;

	for(i=0;i<tamanho;i++,string++){
		if(*string>96 && *string<123){
			if(!foi){
				*string-=32;
				foi=true;
			}else{
				foi=false;
			}
		}
	}

	return string;
}

char *minuscula(char *string){
	unsigned int tamanho=comprimento(string);
	unsigned int i;

	for(i=0;i<tamanho;i++,string++){
		if(*string<91 && *string>64){
			*string+=32;
		}
	}

	return string;
}

int main(){
	char palavra[100]="Ola pessoas bonitas";
	
	maiuscula(palavra);
	printf("%s\n",palavra);

	minuscula(palavra);
	printf("%s\n",palavra);

	intercala(palavra);
	printf("%s\n",palavra);
	
	return 0;
}

