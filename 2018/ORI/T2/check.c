#include <stdio.h>
#include <stdlib.h>

int main( int argc, char const *argv[] ) {
    FILE *file;

    int anterior, proximo;

    file = fopen( argv[ 1 ], "rb" );
    if( file == NULL ) {
        printf( "Erro na abertura" );
    }

    fread( &anterior, sizeof( int ), 1, file );
    while( !feof( file ) ) {
        fread( &proximo, sizeof( int ), 1, file );
        if( proximo >= anterior ) {
            anterior = proximo;
        } else {
            printf( "Problema na ordenacao %d>%d\n", anterior, proximo );
            fclose( file );
            return EXIT_FAILURE;
        }
    }

    printf( "OK\n" );
    fclose( file );

    return 0;
}
