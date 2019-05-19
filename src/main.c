#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <semaphore.h>

#define MAX_HACKERS 4
#define MAX_SERFS 4

pthread_t hackers[ MAX_HACKERS ];
pthread_t serfs[ MAX_SERFS ];
unsigned int captain = 0;

pthread_mutex_t mutex;
sem_t barrier;

sem_t hacker_queue;
sem_t serf_queue;

unsigned int hackers_on_board = 0;
unsigned int serfs_on_board = 0;

unsigned long int ID_NUMBER = 0;

void init_semaphores();

void create_threads();
void join_threads();
void *hacker_do_something( void *args );
void *serf_do_something( void *args );

void board( const char *string, const unsigned int number );
void row_boat( const char *string, const unsigned int number );

void destroy_semaphores();

int main() {
	pthread_mutex_init(&mutex,NULL);

	init_semaphores();

	create_threads();
	join_threads();

	destroy_semaphores();
	return 0;
}

void init_semaphores(){
	sem_init(&hacker_queue, 0, MAX_HACKERS);
	sem_init(&hacker_queue, 0, MAX_SERFS);
	sem_init(&barrier, 0, 0);
}

void create_threads() {

	int result;
	long int i;

	printf( "---------------------------------------------------------\n" );

	for( i = 0; i < MAX_HACKERS; i++ ) {
		if( ( result = pthread_create( &hackers[ i ], NULL, hacker_do_something, (void *)++ID_NUMBER ) ) ) {
			printf( "Erro criando thread do hacker[%ld]\n", i );
			exit( 0 );
		}
	}

	for( i = 0; i < MAX_SERFS; i++ ) {
		if( ( result = pthread_create( &serfs[ i ], NULL, serf_do_something, (void *)++ID_NUMBER ) ) ) {
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

void *hacker_do_something( void *args ) {
	pthread_mutex_lock( &mutex );
	unsigned int my_number = (long int)args;
	hackers_on_board++;

	if ( hackers_on_board == 4 ) {
		for( int i = 0; i < 4; i++ ) {
			sem_post( &hacker_queue );
		}
		captain = my_number;
	} else if ( hackers_on_board == 2 && serfs_on_board >= 2 ) {
		for ( int i = 0; i < 2; i++ ) {
			sem_post( &hacker_queue );
		}
		for ( int i = 0; i < 2; i++ ) {
			sem_post( &serf_queue );
		}
		serfs_on_board -= 2;
		hackers_on_board = 0;
		
		captain = my_number;
	} else {
		pthread_mutex_unlock( &mutex );
		captain = 0;
	}

	sem_wait( &hacker_queue );
	board( "Hacker", my_number );
	sem_wait( &barrier );

	printf("Hacker %d passed the barrier\n", my_number);
	fflush(stdout);

	if ( my_number == captain ) {
		row_boat( "Hacker", my_number );
		printf( "---------------------------------------------------------\n" );
		fflush(stdout);
		pthread_mutex_unlock( &mutex );
	}

	return NULL;
}

void *serf_do_something( void *args ) {
	pthread_mutex_lock( &mutex );
	unsigned int my_number = (long int)args;
	serfs_on_board++;

	if ( serfs_on_board == 4 ) {
		for( int i = 0; i < 4; i++ ) {
			sem_post( &serf_queue );
		}
		captain = my_number;
	} else if ( serfs_on_board == 2 && hackers_on_board >= 2 ) {
		for ( int i = 0; i < 2; i++ ) {
			sem_post( &serf_queue );
		}
		for ( int i = 0; i < 2; i++ ) {
			sem_post( &hacker_queue );
		}
		hackers_on_board -= 2;
		serfs_on_board = 0;
		
		captain = my_number;
	} else {
		pthread_mutex_unlock( &mutex );
		captain = 0;
	}

	sem_wait( &serf_queue );
	board( "Serf", my_number );
	sem_wait( &barrier );

	printf("Serf %d passed the barrier\n", my_number);
	fflush(stdout);

	if ( captain == my_number ) {
		row_boat( "Serf", my_number );
		printf( "---------------------------------------------------------\n" );
		fflush(stdout);
		pthread_mutex_unlock( &mutex );
	}
	return NULL;
}

void board( const char *string, const unsigned int number ) {
	printf( "%s \t %d on board\n", string, number );
	fflush( stdout );

	sem_post( &barrier );
}

void row_boat( const char *string, const unsigned int number ) {
	printf( "%s \t %d got the oars\n", string, number );
	fflush( stdout );
}

void destroy_semaphores(){
	sem_destroy(&hacker_queue);
	sem_destroy(&serf_queue);
	sem_destroy(&barrier);
}
