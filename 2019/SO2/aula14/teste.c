#include <stdio.h>
#include <stdlib.h>

int main() {
	int *vetor = malloc(sizeof(int) * 10);
	for (int i = 0; i < 10; i++){
		vetor[i] = i + 1;
		printf("vetor[%d]=%d\n",i,vetor[i]);
	}

	free(vetor);
	
	return 0;
}
