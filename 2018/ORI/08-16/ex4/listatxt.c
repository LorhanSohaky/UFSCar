#include <stdio.h>
#include <string.h>

int main(){
	FILE *arquivo;
	char nome[40], empresa[40];
	float fortuna;

	arquivo = fopen("dados.txt", "r");
	if(arquivo == NULL)
		perror("Erro ao abrir dados.txt");
	else{
		int linha;
		scanf("%d", &linha);

		int atual = 0;

		while(fscanf(arquivo, "%s%f%s", nome, &fortuna, empresa) != EOF && atual != linha){
			atual++;
		}

		printf("%s, com US$ %g bi (%s)\n", nome, fortuna, empresa);

		fclose(arquivo);
	}

	return 0;
}
