#include <pthread.h>
#include <semaphore.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_HACKERS 4
#define MAX_SERFS 4
#define EVERYONE (MAX_HACKERS + MAX_SERFS)
#define LEN 128

pthread_t hackers[ MAX_HACKERS ];
pthread_t serfs[ MAX_SERFS ];
//unsigned int captain = 0;

pthread_mutex_t mutex;
//sem_t barrier;
/* - - - - - - - -- - - - - - -- - - - - - - - - */

// POSIX barriers data type. The structure of the type is deliberately not exposed. 
#if defined(__GNU_LIBRARY__) && !defined(_SEM_SEMUN_UNDEFINED)
#else 
typedef union {
    char __size[__SIZEOF_PTHREAD_BARRIER_T];
    long int __align;
} pthread_barrier_t;

typedef union {
    char __size[__SIZEOF_PTHREAD_BARRIERATTR_T];
    int __align;
} pthread_barrierattr_t;
#endif
int pthread_barrier_init(pthread_barrier_t *barrier, const pthread_barrierattr_t *attr, unsigned count);

int pthread_barrier_destroy(pthread_barrier_t *barrier);

int pthread_barrier_wait(pthread_barrier_t *barrier);


pthread_barrier_t _barrier;
/* - - - - - - - - - - - - - - - - - - - - - - - */
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
    //unsigned int captain = 0;
    pthread_mutex_init(&mutex,NULL);

    init_semaphores();

    create_threads();
    join_threads();

    destroy_semaphores();
    return 0;
}

void init_barrier(){
    pthread_barrier_init(&_barrier, NULL, EVERYONE);
}

void init_semaphores(){
    sem_init(&hacker_queue, 0, MAX_HACKERS);
    sem_init(&hacker_queue, 0, MAX_SERFS);
    init_barrier();
    //sem_init(&barrier, 0, 0);
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
        //printf("Criei thread hacker %lu\n",ID_NUMBER);
    }

    for( i = 0; i < MAX_SERFS; i++ ) {
        if( ( result = pthread_create( &serfs[ i ], NULL, serf_do_something, (void *)++ID_NUMBER ) ) ) {
            printf( "Erro criando thread do serf[%ld]\n", i );
            exit( 0 );
        }
        //printf("Criei thread serf %lu\n",ID_NUMBER);
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
    unsigned captain = 0;
    int result;
    char err_msg[LEN];
    while ( 1 ) {
        

        pthread_mutex_lock( &mutex );
        printf("Hacker %lu got in the barrier\n", (unsigned long)args);
        fflush(stdout);
        pthread_mutex_unlock( &mutex );
        result=pthread_barrier_wait(&_barrier);
        if(result>0) {
            strerror_r(result,err_msg,LEN);
            printf("Th %ld - erro em barrier_wait: %s\n",(long)args,err_msg);
        }

        pthread_mutex_lock( &mutex );
        unsigned int my_number = (long int)args;
        hackers_on_board++;

        if ( hackers_on_board == 4 ) {
            for( int i = 0; i < 4; i++ ) {
                sem_post( &hacker_queue );
            }
            captain = my_number;
            printf("I chose a captain!\n");
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
            captain = 0;
            pthread_mutex_unlock( &mutex );
        }

        sem_wait( &hacker_queue );
        board( "Hacker", my_number );

        /*
        result=pthread_barrier_wait(&_barrier);
        if(result>0) {
            strerror_r(result,err_msg,LEN);
            printf("Th %ld - erro em barrier_wait: %s\n",(long)my_number,err_msg);
        }*/
        //pthread_barrier_wait(&_barrier);
        //sem_wait( &barrier );

        printf("Hacker %d passed the barrier\n", my_number);
        fflush(stdout);

        if ( my_number == captain ) {
            row_boat( "Hacker", my_number );
            printf( "---------------------------------------------------------\n" );
            fflush(stdout);
            pthread_mutex_unlock( &mutex );
        }
    }

    return NULL;
}

void *serf_do_something( void *args ) {
    unsigned captain = 0;
    char err_msg[LEN];
    int result;
    while ( 1 ) {

        pthread_mutex_lock( &mutex );
        printf("Serf %lu got in the barrier\n", (unsigned long)args);
        fflush(stdout);
        pthread_mutex_unlock( &mutex );
        result=pthread_barrier_wait(&_barrier);
        if(result>0) {
            strerror_r(result,err_msg,LEN);
            printf("Th %ld - erro em barrier_wait: %s\n",(long)args,err_msg);
        }

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
            captain = 0;
            pthread_mutex_unlock( &mutex );
        }

        sem_wait( &serf_queue );
        board( "Serf", my_number );

        /*
        result=pthread_barrier_wait(&_barrier);
        if(result>0) {
            strerror_r(result,err_msg,LEN);
            printf("Th %ld - erro em barrier_wait: %s\n",(long)my_number,err_msg);
        }*/
        //pthread_barrier_wait(&_barrier);
        //sem_wait( &barrier );

        printf("Serf %d passed the barrier\n", my_number);
        fflush(stdout);

        if ( captain == my_number ) {
            row_boat( "Serf", my_number );
            printf( "---------------------------------------------------------\n" );
            fflush(stdout);
            pthread_mutex_unlock( &mutex );
        }
    }
    return NULL;
}

void board( const char *string, const unsigned int number ) {
    printf( "%s \t passed the barrier, %d on board\n", string, number );
    fflush( stdout );

    //sem_post( &barrier );
}

void row_boat( const char *string, const unsigned int number ) {
    printf( "%s \t %d got the oars\n", string, number );
    fflush( stdout );
}

void destroy_semaphores(){
    sem_destroy(&hacker_queue);
    sem_destroy(&serf_queue);
    //sem_destroy(&barrier);
    pthread_barrier_destroy(&_barrier);
}
