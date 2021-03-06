#include <pthread.h>
#include <semaphore.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define MAX_HACKERS 4
#define MAX_SERFS 4
#define MAX_THREADS ( MAX_HACKERS + MAX_SERFS )
#define MAX_THREADS_PER_BOAT 4
#define LEN 128

pthread_t hackers_t[MAX_HACKERS];
pthread_t serfs_t[MAX_SERFS];

pthread_mutex_t   mutex;
pthread_barrier_t barrier;

sem_t hacker_queue;
sem_t serf_queue;

unsigned int hackers = 0;
unsigned int serfs   = 0;
unsigned int sail	= 0;

unsigned long int ID_NUMBER = 0;

void init_semaphores();

void  create_threads();
void  join_threads();
void *hacker_do_something( void *args );
void *serf_do_something( void *args );

void board( const char *string, const unsigned int number );
void row_boat( const char *string, const unsigned int number );

void destroy_semaphores_and_barrier();

void get_to_barrier( const char *string, const unsigned int number );

int main() {
	printf( "************************\n" );
	printf( "*River Crossing Problem*\n" );
	printf( "************************\n\n" );
	printf( "Hackers and Serfs will be represented by threads\n" );
	printf( "Number of hackers:\t%d\n", MAX_HACKERS );
	printf( "Number of serfs:\t%d\n", MAX_SERFS );
	pthread_mutex_init( &mutex, NULL );
	init_semaphores();
	sleep( 5 );

	create_threads();
	join_threads();

	destroy_semaphores_and_barrier();

	return 0;
}

void init_barrier() {
	pthread_barrier_init( &barrier, NULL, MAX_THREADS_PER_BOAT );
}

void init_semaphores() {
	sem_init( &hacker_queue, 0, 0 );
	sem_init( &serf_queue, 0, 0 );
	init_barrier();
}

void create_threads() {
	int		 result;
	long int i;

	printf( "---------------------------------------------------------\n" );
	for( i = 0; i < MAX_HACKERS; i++ ) {
		if( ( result = pthread_create(
				  &hackers_t[i], NULL, hacker_do_something, (void *)++ID_NUMBER ) ) ) {
			printf( "Erro criando thread do hacker[%ld]\n", i );
			exit( 0 );
		}
	}

	for( i = 0; i < MAX_SERFS; i++ ) {
		if( ( result =
				  pthread_create( &serfs_t[i], NULL, serf_do_something, (void *)++ID_NUMBER ) ) ) {
			printf( "Erro criando thread do serf[%ld]\n", i );
			exit( 0 );
		}
	}
}

void join_threads() {
	int		 result;
	long int i;
	for( i = 0; i < MAX_HACKERS; i++ ) {
		if( ( result = pthread_join( hackers_t[i], NULL ) ) ) {
			printf( "Erro em pthread_join do hacker[%ld]\n", i );
			exit( 0 );
		}
	}
	for( i = 0; i < MAX_SERFS; i++ ) {
		if( ( result = pthread_join( serfs_t[i], NULL ) ) ) {
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
		int			 condition;
		hackers++;

		if( hackers == MAX_THREADS_PER_BOAT ) {
			for( int i = 0; i < MAX_THREADS_PER_BOAT; i++ ) {
				sem_post( &hacker_queue );
			}
			hackers	= 0;
			is_captain = true;
			condition  = 0;
		} else if( hackers == MAX_THREADS_PER_BOAT / 2 && serfs >= MAX_THREADS_PER_BOAT / 2 ) {
			condition = 0;
			for( int i = 0; i < MAX_THREADS_PER_BOAT / 2; i++ ) {
				sem_post( &hacker_queue );
			}
			for( int i = 0; i < MAX_THREADS_PER_BOAT / 2; i++ ) {
				sem_post( &serf_queue );
			}
			if( serfs > 2 ) {
				condition = 1;
			}
			serfs -= MAX_THREADS_PER_BOAT / 2;
			hackers	= 0;
			is_captain = true;
			condition++;
		} else {
			is_captain = false;
			pthread_mutex_unlock( &mutex );
		}

		sem_wait( &hacker_queue );

		board( "Hacker", my_number );
		get_to_barrier( "Hacker", my_number );

		if( is_captain ) {
			row_boat( "Hacker", my_number );
			if( !condition ) {
				printf( "Hackers available:\t%d\n", MAX_HACKERS - 4 );
				printf( "Serfs available:\t%d\n", MAX_SERFS );
			} else if( condition == 1 ) {
				printf( "Hackers available:\t%d\n", MAX_HACKERS - 2 );
				printf( "Serfs available:\t%d\n", MAX_SERFS - 2 );
			} else {
				printf( "!Warning!\nThere were more than 2 serfs waiting, 1 could not sail.\n" );
				printf( "Hackers available:\t%d\n", MAX_HACKERS - 2 );
				printf( "Serfs available:\t%d\n", MAX_SERFS - 2 );
			}
			printf( "---------------------------------------------------------\n" );
			fflush( stdout );
			pthread_mutex_unlock( &mutex );
		}
		sleep( 5 );
	}
	return NULL;
}

void *serf_do_something( void *args ) {
	while( true ) {
		pthread_mutex_lock( &mutex );
		unsigned int my_number  = (long int)args - MAX_HACKERS;
		bool		 is_captain = false;
		int			 condition;
		serfs++;

		if( serfs == MAX_THREADS_PER_BOAT ) {
			for( int i = 0; i < MAX_THREADS_PER_BOAT; i++ ) {
				sem_post( &serf_queue );
			}
			serfs	  = 0;
			is_captain = true;
			condition  = 0;
		} else if( serfs == MAX_THREADS_PER_BOAT / 2 && hackers >= MAX_THREADS_PER_BOAT / 2 ) {
			condition = 0;
			for( int i = 0; i < MAX_THREADS_PER_BOAT / 2; i++ ) {
				sem_post( &serf_queue );
			}
			for( int i = 0; i < MAX_THREADS_PER_BOAT / 2; i++ ) {
				sem_post( &hacker_queue );
			}
			if( hackers > 2 ) {
				condition = 1;
			}

			hackers -= MAX_THREADS_PER_BOAT / 2;
			serfs	  = 0;
			is_captain = true;
			condition++;
		} else {
			is_captain = false;
			pthread_mutex_unlock( &mutex );
		}

		sem_wait( &serf_queue );

		board( "Serf", my_number );
		get_to_barrier( "Serf", my_number );

		if( is_captain ) {
			row_boat( "Serf", my_number );
			if( !condition ) {
				printf( "Hackers available:\t%d\n", MAX_HACKERS );
				printf( "Serfs available:\t%d\n", MAX_SERFS - 4 );
			} else if( condition == 1 ) {
				printf( "Hackers available:\t%d\n", MAX_HACKERS - 2 );
				printf( "Serfs available:\t%d\n", MAX_SERFS - 2 );
			} else {
				printf( "Hackers available:\t%d\n", MAX_HACKERS - 2 );
				printf( "Serfs available:\t%d\n", MAX_SERFS - 2 );
				printf( "!Warning!\nThere were more than 2 hackers waiting, 1 could not sail.\n" );
			}
			printf( "---------------------------------------------------------\n" );
			fflush( stdout );
			pthread_mutex_unlock( &mutex );
		}
		sleep( 5 );
	}
	return NULL;
}

void board( const char *string, const unsigned int number ) {
	printf( "%s \t %d on board\n", string, number );
	fflush( stdout );
}

void row_boat( const char *string, const unsigned int number ) {
	printf( "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n" );
	printf( "Sail no. #%u\n", ++sail );
	printf( "%s \t %d got the oars\n", string, number );
	fflush( stdout );
}

void destroy_semaphores_and_barrier() {
	sem_destroy( &hacker_queue );
	sem_destroy( &serf_queue );
	pthread_barrier_destroy( &barrier );
}

void get_to_barrier( const char *string, const unsigned int number ) {
	int  result;
	char err_msg[LEN];
	result = pthread_barrier_wait( &barrier );
	if( result > 0 ) {
		strerror_r( result, err_msg, LEN );
		printf( "Th %u - erro em barrier_wait: %s\n", number, err_msg );
	}
}
