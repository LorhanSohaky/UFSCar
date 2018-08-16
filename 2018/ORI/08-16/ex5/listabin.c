#include <stdio.h>

int main(){
	FILE *arquivo;
	char nome[40], empresa[40];
	float fortuna;
	
	int linha;

	arquivo = fopen("dados.bin", "rb");
	if(arquivo == NULL)
		perror("Erro ao abrir dados.bin");
	else{
		scanf("%d", &linha);
		int tamanho = sizeof(nome) + sizeof(fortuna) + sizeof(empresa);

		fseek(arquivo, tamanho * linha, SEEK_SET);

		fread(nome, sizeof nome, 1, arquivo);
		fread(&fortuna, sizeof fortuna, 1, arquivo);
		fread(empresa, sizeof empresa, 1, arquivo);
		printf("%s, com US$ %g bi (%s)\n", nome, fortuna, empresa);

		fclose(arquivo);
	}

	return 0;
}
