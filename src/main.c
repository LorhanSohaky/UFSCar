#include <pthread.h>
#include <semaphore.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <semaphore.h>
#include <stdbool.h>
#include <string.h>
#include <unistd.h>

#define MAX_HACKERS 4
#define MAX_SERFS 4
#define MAX_THREADS (MAX_HACKERS + MAX_SERFS)
#define MAX_THREADS_PER_BOAT 4
#define LEN 128

pthread_t hackers_t[ MAX_HACKERS ];
pthread_t serfs_t[ MAX_SERFS ];

pthread_mutex_t mutex;
pthread_barrier_t _barrier, barrier , barrier2, barrier3;

int pthread_barrier_wait(pthread_barrier_t *barrier);

int pthread_barrier_init(pthread_barrier_t *barrier, const pthread_barrierattr_t *attr, unsigned count);

int pthread_barrier_destroy(pthread_barrier_t *barrier);

sem_t hacker_queue;
sem_t serf_queue;

unsigned int hackers = 0;
unsigned int serfs = 0;

unsigned long int ID_NUMBER = 0;

void init_semaphores();

void create_threads();
void join_threads();
void *hacker_do_something( void *args );
void *serf_do_something( void *args );

void board( const char *string, const unsigned int number );
void row_boat( const char *string, const unsigned int number );

void destroy_semaphores();

void get_to_starting_barrier( const char *string, const unsigned int number );
void get_to_barrier( const char *string, const unsigned int number );

int main() {
    pthread_mutex_init(&mutex,NULL);
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

void init_barrier(){
    pthread_barrier_init(&_barrier, NULL, MAX_THREADS_PER_BOAT);
}

void init_semaphores(){
    sem_init( &hacker_queue, 0, MAX_HACKERS );
    sem_init( &serf_queue, 0, MAX_SERFS) ;
    init_barrier();
}

void create_threads() {

    int result;
    long int i;


    printf( "---------------------------------------------------------\n" );
    for( i = 0; i < MAX_HACKERS; i++ ) {
        if( ( result = pthread_create( &hackers_t[ i ], NULL, hacker_do_something, (void *)++ID_NUMBER ) ) ) {
            printf( "Erro criando thread do hacker[%ld]\n", i );
            exit( 0 );
        }
        //printf("Criei thread hacker %lu\n",ID_NUMBER);
    }

    for( i = 0; i < MAX_SERFS; i++ ) {
        if( ( result = pthread_create( &serfs_t[ i ], NULL, serf_do_something, (void *)++ID_NUMBER ) ) ) {
            printf( "Erro criando thread do serf[%ld]\n", i );
            exit( 0 );
        }
        //printf("Criei thread serf %lu\n",ID_NUMBER);
        sleep(5);
    }
}

void join_threads() {
    int result;
    long int i;
    for( i = 0; i < MAX_HACKERS; i++ ) {
        if( ( result = pthread_join( hackers_t[ i ], NULL ) ) ) {
            printf( "Erro em pthread_join do hacker[%ld]\n", i );
            exit( 0 );
        }
    }
    for( i = 0; i < MAX_SERFS; i++ ) {
        if( ( result = pthread_join( serfs_t[ i ], NULL ) ) ) {
            printf( "Erro em pthread_join do serf[%ld]\n", i );
            exit( 0 );
        }
    }
}

void *hacker_do_something( void *args ) {
    while( true ){

        //get_to_starting_barrier("Hacker",(unsigned long)args);
        /*barreira para esperar todas as threads chegarem antes de começarmos
          pthread_mutex_lock( &mutex );
          printf("Hacker %lu got in the barrier\n", (unsigned long)args);
          fflush(stdout);
          pthread_mutex_unlock( &mutex );
          result=pthread_barrier_wait(&_barrier);
          if(result>0) {
          strerror_r(result,err_msg,LEN);
          printf("Th %ld - erro em barrier_wait: %s\n",(long)args,err_msg);
          }
         **********************************************************************/
        pthread_mutex_lock( &mutex );
        unsigned int my_number = (long int)args;
        bool is_captain = false;
        hackers++;

        if ( hackers == MAX_THREADS_PER_BOAT ) {
            for( int i = 0; i < MAX_THREADS_PER_BOAT; i++ ) {
                sem_post( &hacker_queue );
            }
            hackers = 0;
            is_captain = true;
            //printf( "H Captain1 %d\n", my_number );
        } else if ( hackers == MAX_THREADS_PER_BOAT / 2 && serfs >= MAX_THREADS_PER_BOAT / 2 ) {
            for ( int i = 0; i < MAX_THREADS_PER_BOAT / 2; i++ ) {
                sem_post( &hacker_queue );
            }
            for ( int i = 0; i < MAX_THREADS_PER_BOAT / 2; i++ ) {
                sem_post( &serf_queue );
            }
            serfs -= MAX_THREADS_PER_BOAT / 2;
            hackers = 0;
            is_captain = true;
            //printf( "H Captain2 %d\n", my_number );
        } else {
            is_captain = false;
            pthread_mutex_unlock( &mutex );
        }

        sem_wait( &hacker_queue );
        board( "Hacker", my_number );
        //pthread_barrier_wait( &barrier );
        get_to_barrier("Hacker", my_number);

        /*
           printf( "Hacker %d passed the barrier\n", my_number );
           fflush(stdout);*/

        //pthread_barrier_wait( &barrier2 );
        if ( is_captain ) {
            row_boat( "Hacker", my_number );
            //printf( "H%d capitao chegou\n", my_number );
            printf( "---------------------------------------------------------\n" );
            fflush(stdout);
            //pthread_barrier_wait( &barrier3 );
            pthread_mutex_unlock( &mutex );
        } else {
            //printf( "H%d esperando capitao\n", my_number );
            //pthread_barrier_wait( &barrier3 );
        }
        //printf( "H%d Fim\n", my_number );
        sleep(5);
    }
    return NULL;
}

void *serf_do_something( void *args ) {
    while( true ){
        //get_to_starting_barrier("Serf",(unsigned long)args);
        /*barreira para esperar todas as threads chegarem antes de começarmos
          pthread_mutex_lock( &mutex );
          printf("Serf %lu got in the barrier\n", (unsigned long)args);
          fflush(stdout);
          pthread_mutex_unlock( &mutex );
          result=pthread_barrier_wait(&_barrier);
          if(result>0) {
          strerror_r(result,err_msg,LEN);
          printf("Th %ld - erro em barrier_wait: %s\n",(long)args,err_msg);
          }
         **********************************************************************/

        //get_to_starting_barrier("Serf",(unsigned long)args);
        pthread_mutex_lock( &mutex );
        unsigned int my_number = (long int)args;
        bool is_captain = false;
        serfs++;

        if ( serfs == MAX_THREADS_PER_BOAT ) {
            for( int i = 0; i < MAX_THREADS_PER_BOAT; i++ ) {
                sem_post( &serf_queue );
            }
            serfs = 0;
            is_captain = true;
            //printf( "S Captain1 %d\n", my_number );
        } else if ( serfs == MAX_THREADS_PER_BOAT / 2 && hackers >= MAX_THREADS_PER_BOAT / 2 ) {
            for ( int i = 0; i < MAX_THREADS_PER_BOAT / 2; i++ ) {
                sem_post( &serf_queue );
            }
            for ( int i = 0; i < MAX_THREADS_PER_BOAT / 2; i++ ) {
                sem_post( &hacker_queue );
            }
            hackers -= MAX_THREADS_PER_BOAT / 2;
            serfs = 0;
            is_captain = true;
            //printf( "S Captain2 %d\n", my_number );
        } else {
            is_captain = false;
            pthread_mutex_unlock( &mutex );
        }

        sem_wait( &serf_queue );
        board( "Serf", my_number );
        //pthread_barrier_wait( &barrier );
        get_to_barrier("Serf", my_number);

        /*
           printf( "Serf %d passed the barrier\n", my_number );
           fflush(stdout);*/

        //pthread_barrier_wait( &barrier2 );
        if ( is_captain ) {
            row_boat( "Serf", my_number );
            //printf( "S%d capitao chegou\n", my_number );
            printf( "---------------------------------------------------------\n" );
            fflush(stdout);
            //pthread_barrier_wait( &barrier3 );
            pthread_mutex_unlock( &mutex );
        } else {
            //printf( "S%d esperando capitao\n", my_number );
            //pthread_barrier_wait( &barrier3 );
        }
        //printf( "S%d Fim\n", my_number );
        sleep(5);
    }
    return NULL;
}

void board( const char *string, const unsigned int number ) {
    printf( "%s \t %d on board\n", string, number );
    fflush( stdout );
}

void row_boat( const char *string, const unsigned int number ) {
    printf( "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n" );
    printf( "%s \t %d got the oars\n", string, number );
    fflush( stdout );
}

void destroy_semaphores(){
    sem_destroy(&hacker_queue);
    sem_destroy(&serf_queue);
    pthread_barrier_destroy(&_barrier);
}

void get_to_starting_barrier( const char *string, const unsigned int number ) {
    int result;
    char err_msg[LEN];
    /*barreira para esperar todas as threads chegarem antes de começarmos*/
    pthread_mutex_lock( &mutex );
    printf( "%s %d got to the starting barrier\n", string, number);
    fflush(stdout);
    pthread_mutex_unlock( &mutex );
    result=pthread_barrier_wait( &_barrier );
    if(result>0) {
        strerror_r(result,err_msg,LEN);
        printf("Th %u - erro em barrier_wait: %s\n",number,err_msg);
    }
    /**********************************************************************/

}

void get_to_barrier( const char *string, const unsigned int number ) {
    int result;
    char err_msg[LEN];
    /*barreira para esperar todas as threads chegarem antes de começarmos*/
    //printf( "%s %d got to the starting barrier\n", string, number);
    //fflush(stdout);
    result=pthread_barrier_wait( &_barrier );
    if(result>0) {
        strerror_r(result,err_msg,LEN);
        printf("Th %u - erro em barrier_wait: %s\n",number,err_msg);
    }
    /**********************************************************************/

}
