/*
 Ideia: Criar processos e ver a ordem de criação e depois criar processos de modo a forçar a criação de forma ordenada.
 
*/

#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

#define MAX 10

void *desordenado(void *valor){
	printf("Thread desordenada %d\n", *((int *)valor));
	return NULL;
}

void criar_threads_de_qualquer_forma(){
	pthread_t thrs[MAX];
	for(int i = 0; i < MAX; i++){
		pthread_create(&thrs[i], NULL, desordenado, &i);
	}

}

void *criar_threads_de_forma_ordenada(void *quantidade){
	int valor = *((int *)quantidade);
	printf("Thread %d\n",valor);

	pthread_t thr;
	if(valor == MAX){
		return NULL;
	}

	valor++;

	pthread_create(&thr, NULL, criar_threads_de_forma_ordenada, &valor);
	pthread_join(thr, NULL);

	return NULL;
}

int main(){
	int min = 1;
	criar_threads_de_qualquer_forma();
	sleep(1); // Somente para aguardar que a função acima termine de criar todas as threads
	criar_threads_de_forma_ordenada(&min);
	return 0;
}

/*
 Conclusão: Para garantir que uma thread execute numa sequência determinada, é necessário encadear a criação das threads.
*/
