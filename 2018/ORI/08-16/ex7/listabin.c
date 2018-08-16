#include <stdio.h>

int main(){
	FILE *arquivo;
	char nome[40], empresa[40];
	float fortuna;
	
	int linha = 9;

	arquivo = fopen("dados.bin", "rb+");
	if(arquivo == NULL)
		perror("Erro ao abrir dados.bin");
	else{
		int tamanho = sizeof(nome) + sizeof(fortuna) + sizeof(empresa);
		int position;

		fseek(arquivo, tamanho * linha, SEEK_SET);
		position = ftell(arquivo);
		

		fread(nome, sizeof nome, 1, arquivo);
		fread(&fortuna, sizeof fortuna, 1, arquivo);
		fread(empresa, sizeof empresa, 1, arquivo);

		fortuna = 47.5;
		
		fseek(arquivo, position, SEEK_SET);

		fwrite(nome, sizeof nome, 1, arquivo);
		fwrite(&fortuna, sizeof fortuna, 1, arquivo);
		fwrite(empresa, sizeof empresa, 1, arquivo);
		
		printf("%s, com US$ %g bi (%s)\n", nome, fortuna, empresa);

		fclose(arquivo);
	}

	return 0;
}
