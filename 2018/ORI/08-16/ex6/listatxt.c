#include <stdio.h>
#include <string.h>

int main(){
	FILE *arquivo;
	char nome[40], empresa[40];
	float fortuna;

	arquivo = fopen("dados.txt", "r+");
	if(arquivo == NULL)
		perror("Erro ao abrir dados.txt");
	else{
		int linha = 9;
		int atual = 0;
		int position = ftell(arquivo);

		while(fscanf(arquivo, "%s%f%s\n", nome, &fortuna, empresa) != EOF && atual != linha){
			position = ftell(arquivo);
			atual++;
		}

		fortuna = 47.5;
		
		fseek(arquivo, position+1, SEEK_SET);
		fprintf(arquivo, "%s %.1f %s", nome, fortuna, empresa);

		

		printf("%s, com US$ %g bi (%s)\n", nome, fortuna, empresa);

		fclose(arquivo);
	}

	return 0;
}
