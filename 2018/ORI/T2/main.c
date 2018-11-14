#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_ARQUIVOS 10
#define MAX_REGISTROS_POR_ARQUIVO 5 // Número máximo de registros lidos de cada arquivo

int ordenar( const char *nomeBase );
bool existeArquivo( const char *nomeArquivo );
int ordenar_por_intercalacao_balanceada( const char *nomeBase, int quantidadeArquivos );
void selectionSort( int *vetor, int tamanho );

int main( int argc, char const *argv[] ) {
    if( argc != 2 ) {
        fprintf( stderr, "Nome base do arquivo nao especificado!\n" );
        return EXIT_FAILURE;
    }
    ordenar( argv[ 1 ] );
    return EXIT_SUCCESS;
}

int ordenar( const char *nomeBase ) {
    int quantidadeArquivos = 0;
    char *nomeArquivo      = malloc( strlen( nomeBase + MAX_ARQUIVOS ) * sizeof( char ) );

    if( nomeArquivo == NULL ) {
        fprintf( stderr, "Problema com alocacao dinamica! Possivel falta de memoria\n" );
        return EXIT_FAILURE;
    }

    for( int i = 0; i < MAX_ARQUIVOS; i++ ) {
        sprintf( nomeArquivo, "%s%d", nomeBase, i );

        if( existeArquivo( nomeArquivo ) ) {
            quantidadeArquivos++;
        }
    }

    free( nomeArquivo );

    if( quantidadeArquivos == 0 ) {
        fprintf( stderr, "Nao existe outros arquivos a patir do arquivo base especificado!\n" );
        return EXIT_FAILURE;
    }

    ordenar_por_intercalacao_balanceada( nomeBase, quantidadeArquivos );
}

bool existeArquivo( const char *nomeArquivo ) {
    FILE *arquivo = fopen( nomeArquivo, "rb" );
    bool result   = arquivo != NULL;

    if( result ) {
        fclose( arquivo );
    }

    return result;
}

int ordenar_por_intercalacao_balanceada( const char *nomeBase, int quantidadeArquivos ) {
    FILE **arquivos = malloc( quantidadeArquivos * sizeof( FILE * ) );
    if( arquivos == NULL ) {
        fprintf( stderr, "Problema com alocacao dinamica! Possivel falta de memoria\n" );
        return EXIT_FAILURE;
    }

    char *nomeArquivo = malloc( strlen( nomeBase + MAX_ARQUIVOS ) * sizeof( char ) );
    if( nomeArquivo == NULL ) {
        free( arquivos );
        fprintf( stderr, "Problema com alocacao dinamica! Possivel falta de memoria\n" );
        return EXIT_FAILURE;
    }

    for( int i = 0; i < quantidadeArquivos; i++ ) {
        sprintf( nomeArquivo, "%s%d", nomeBase, i );
        arquivos[ i ] = fopen( nomeArquivo, "rb" );
    }
}

void selectionSort( int *vetor, int tamanho ) {
    int i, j, min, aux;
    for( i = 0; i < tamanho - 1; i++ ) {
        min = i;
        for( j = i + 1; j < tamanho; j++ ) {
            if( vetor[ j ] < vetor[ min ] ) {
                min = j;
            }
        }
        if( vetor[ i ] != vetor[ min ] ) {
            aux          = vetor[ i ];
            vetor[ i ]   = vetor[ min ];
            vetor[ min ] = aux;
        }
    }
}