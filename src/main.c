#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

#define MAX_HACKERS 4
#define MAX_SERFS 4

pthread_t hackers[ MAX_HACKERS ];
pthread_t serfs[ MAX_SERFS ];

pthread_mutex_t mutex;

int NUM_TEST = 0;

void create_threads();
void join_threads();
void *doSomething( void *args );

int main() {
    create_threads();
    join_threads();

    return 0;
}

void create_threads() {
    int result;
    long int i;
    for( i = 0; i < MAX_HACKERS; i++ ) {
	if( ( result = pthread_create( &hackers[ i ], NULL, doSomething, (void *)i ) ) ) {
	    printf( "Erro criando thread do hacker[%ld]\n", i );
	    exit( 0 );
	}
    }

    for( i = 0; i < MAX_SERFS; i++ ) {
	if( ( result = pthread_create( &serfs[ i ], NULL, doSomething, (void *)i ) ) ) {
	    printf( "Erro criando thread do serf[%ld]\n", i );
	    exit( 0 );
	}
    }
}

void join_threads() {
    int result;
    long int i;
    for( i = 0; i < MAX_HACKERS; i++ ) {
	if( ( result = pthread_join( hackers[ i ], NULL ) ) ) {
	    printf( "Erro em pthread_join do hacker[%ld]\n", i );
	    exit( 0 );
	}
    }
    for( i = 0; i < MAX_SERFS; i++ ) {
	if( ( result = pthread_join( serfs[ i ], NULL ) ) ) {
	    printf( "Erro em pthread_join do serf[%ld]\n", i );
	    exit( 0 );
	}
    }
}

void *doSomething( void *args ) {
    pthread_mutex_lock( &mutex );
    // Região critica
    NUM_TEST++;
    printf( "Ola %ld %d\n", (long int)args, NUM_TEST );
    fflush( stdout );
    pthread_mutex_unlock( &mutex );
    return NULL;
}
