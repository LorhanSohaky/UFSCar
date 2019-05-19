#include <pthread.h>
#include <semaphore.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

#define MAX_HACKERS 4
#define MAX_SERFS 4
#define MAX_THREADS_PER_BOAT 4

pthread_t hackers[MAX_HACKERS];
pthread_t serfs[MAX_SERFS];

pthread_mutex_t   mutex;
pthread_barrier_t barrier, barrier2, barrier3;

sem_t hacker_queue;
sem_t serf_queue;

unsigned int hackers_on_board = 0;
unsigned int serfs_on_board   = 0;

unsigned long int ID_NUMBER = 0;

void init_semaphores();

void  create_threads();
void  join_threads();
void *hacker_do_something( void *args );
void *serf_do_something( void *args );

void board( const char *string, const unsigned int number );
void row_boat( const char *string, const unsigned int number );

void destroy_semaphores();

int main() {
	pthread_mutex_init( &mutex, NULL );
	pthread_barrier_init( &barrier, NULL, MAX_THREADS_PER_BOAT );
	pthread_barrier_init( &barrier2, NULL, MAX_THREADS_PER_BOAT );
	pthread_barrier_init( &barrier3, NULL, MAX_THREADS_PER_BOAT );

	init_semaphores();

	create_threads();
	join_threads();

	destroy_semaphores();
	pthread_barrier_destroy( &barrier );
	pthread_barrier_destroy( &barrier2 );
	pthread_barrier_destroy( &barrier3 );

	return 0;
}

void init_semaphores() {
	sem_init( &hacker_queue, 0, MAX_HACKERS );
	sem_init( &hacker_queue, 0, MAX_SERFS );
}

void create_threads() {
	int		 result;
	long int i;

	printf( "---------------------------------------------------------\n" );

	for( i = 0; i < MAX_HACKERS; i++ ) {
		if( ( result = pthread_create(
				  &hackers[i], NULL, hacker_do_something, (void *)++ID_NUMBER ) ) ) {
			printf( "Erro criando thread do hacker[%ld]\n", i );
			exit( 0 );
		}
	}

	for( i = 0; i < MAX_SERFS; i++ ) {
		if( ( result =
				  pthread_create( &serfs[i], NULL, serf_do_something, (void *)++ID_NUMBER ) ) ) {
			printf( "Erro criando thread do serf[%ld]\n", i );
			exit( 0 );
		}
	}
}

void join_threads() {
	int		 result;
	long int i;
	for( i = 0; i < MAX_HACKERS; i++ ) {
		if( ( result = pthread_join( hackers[i], NULL ) ) ) {
			printf( "Erro em pthread_join do hacker[%ld]\n", i );
			exit( 0 );
		}
	}
	for( i = 0; i < MAX_SERFS; i++ ) {
		if( ( result = pthread_join( serfs[i], NULL ) ) ) {
			printf( "Erro em pthread_join do serf[%ld]\n", i );
			exit( 0 );
		}
	}
}

void *hacker_do_something( void *args ) {
	while( true ) {
		pthread_mutex_lock( &mutex );
		unsigned int my_number  = (long int)args;
		bool		 is_captain = false;
		hackers_on_board++;

		if( hackers_on_board == MAX_THREADS_PER_BOAT ) {
			for( int i = 0; i < MAX_THREADS_PER_BOAT; i++ ) {
				sem_post( &hacker_queue );
			}
			hackers_on_board = 0;
			is_captain		 = true;
			printf( "H Captain1 %d\n", my_number );
		} else if( hackers_on_board == MAX_THREADS_PER_BOAT / 2 &&
				   serfs_on_board >= MAX_THREADS_PER_BOAT / 2 ) {
			for( int i = 0; i < MAX_THREADS_PER_BOAT / 2; i++ ) {
				sem_post( &hacker_queue );
			}
			for( int i = 0; i < MAX_THREADS_PER_BOAT / 2; i++ ) {
				sem_post( &serf_queue );
			}
			serfs_on_board -= MAX_THREADS_PER_BOAT / 2;
			hackers_on_board = 0;
			is_captain		 = true;
			printf( "H Captain2 %d\n", my_number );
		} else {
			pthread_mutex_unlock( &mutex );
		}

		sem_wait( &hacker_queue );
		board( "Hacker", my_number );
		pthread_barrier_wait( &barrier );

		printf( "Hacker %d passed the barrier\n", my_number );
		fflush( stdout );

		pthread_barrier_wait( &barrier2 );
		if( is_captain ) {
			row_boat( "Hacker", my_number );
			printf( "H%d capitao chegou\n", my_number );
			printf( "---------------------------------------------------------\n" );
			fflush( stdout );
			pthread_barrier_wait( &barrier3 );
			pthread_mutex_unlock( &mutex );
		} else {
			printf( "H%d esperando capitao\n", my_number );
			pthread_barrier_wait( &barrier3 );
		}
		printf( "H%d Fim\n", my_number );
	}
	return NULL;
}

void *serf_do_something( void *args ) {
	while( true ) {
		pthread_mutex_lock( &mutex );
		unsigned int my_number  = (long int)args;
		bool		 is_captain = false;
		serfs_on_board++;

		if( serfs_on_board == MAX_THREADS_PER_BOAT ) {
			for( int i = 0; i < MAX_THREADS_PER_BOAT; i++ ) {
				sem_post( &serf_queue );
			}
			serfs_on_board = 0;
			is_captain	 = true;
			printf( "S Captain1 %d\n", my_number );
		} else if( serfs_on_board == MAX_THREADS_PER_BOAT / 2 &&
				   hackers_on_board >= MAX_THREADS_PER_BOAT / 2 ) {
			for( int i = 0; i < MAX_THREADS_PER_BOAT / 2; i++ ) {
				sem_post( &serf_queue );
			}
			for( int i = 0; i < MAX_THREADS_PER_BOAT / 2; i++ ) {
				sem_post( &hacker_queue );
			}
			hackers_on_board -= MAX_THREADS_PER_BOAT / 2;
			serfs_on_board = 0;
			is_captain	 = true;
			printf( "S Captain2 %d\n", my_number );
		} else {
			pthread_mutex_unlock( &mutex );
		}

		sem_wait( &serf_queue );
		board( "Serf", my_number );
		pthread_barrier_wait( &barrier );

		printf( "Serf %d passed the barrier\n", my_number );
		fflush( stdout );

		pthread_barrier_wait( &barrier2 );
		if( is_captain ) {
			row_boat( "Serf", my_number );
			printf( "S%d capitao chegou\n", my_number );
			printf( "---------------------------------------------------------\n" );
			fflush( stdout );
			pthread_barrier_wait( &barrier3 );
			pthread_mutex_unlock( &mutex );
		} else {
			printf( "S%d esperando capitao\n", my_number );
			pthread_barrier_wait( &barrier3 );
		}
		printf( "S%d Fim\n", my_number );
	}
	return NULL;
}

void board( const char *string, const unsigned int number ) {
	printf( "%s \t %d on board\n", string, number );
	fflush( stdout );
}

void row_boat( const char *string, const unsigned int number ) {
	printf( "%s \t %d got the oars\n", string, number );
	fflush( stdout );
}

void destroy_semaphores() {
	sem_destroy( &hacker_queue );
	sem_destroy( &serf_queue );
}
