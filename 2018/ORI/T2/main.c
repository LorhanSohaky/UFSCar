#include <math.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_ARQUIVOS 10
#define MAX_REGISTROS_POR_ARQUIVO 5 // Número máximo de registros lidos de cada arquivo

int ordenar( const char *nomeBase );
bool existeArquivo( const char *nomeArquivo );
int ordenar_por_intercalacao_balanceada( const char *nomeBase, int quantidadeArquivos );
int abrirArquivos( FILE **arquivosEntrada,
                   FILE **arquivosSaida,
                   const char *nomeBase,
                   char *nomeArquivo,
                   int quantidadeArquivos );
void selectionSort( int *vetor, int tamanho );

int main( int argc, char const *argv[] ) {
    if( argc != 2 ) {
        fprintf( stderr, "Nome base do arquivo nao especificado!\n" );
        return EXIT_FAILURE;
    }
    return ordenar( argv[ 1 ] );
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
    return EXIT_SUCCESS;
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
    FILE **arquivosEntrada = malloc( quantidadeArquivos * sizeof( FILE * ) );
    FILE **arquivosSaida   = malloc( quantidadeArquivos * sizeof( FILE * ) );
    char *nomeArquivo      = malloc( strlen( nomeBase + MAX_ARQUIVOS ) * sizeof( char ) );
    // TODO: Verificar erros de alocação

    for( int i = 0; i < quantidadeArquivos; i++ ) {
        sprintf( nomeArquivo, "%s%d", nomeBase, i );
        arquivosEntrada[ i ] = fopen( nomeArquivo, "rb" );
        // TODO: Verificar erros de alocação e liberar memória
    }

    for( int i = 0; i < quantidadeArquivos; i++ ) {
        sprintf( nomeArquivo, "%s%d", nomeBase, i + quantidadeArquivos );
        arquivosSaida[ i ] = fopen( nomeArquivo, "wb" );
        // TODO: Verificar erros de alocação e liberar memória
    }

    float totalRegistros = 0;

    for( int i = 0; i < quantidadeArquivos; i++ ) {
        fseek( arquivosEntrada[ i ], 0, SEEK_END );
        totalRegistros += ftell( arquivosEntrada[ 0 ] ) / sizeof( int );
        rewind( arquivosEntrada[ 0 ] );
    }

    for( int i = 0;
         i < ceil( log10( totalRegistros / quantidadeArquivos ) / log10( quantidadeArquivos * 2 ) );
         i++ ) {
    }

    // TODO ordenar

    // TODO: fechar arquivos
    // TODO: leberar alocação

    return EXIT_SUCCESS;
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