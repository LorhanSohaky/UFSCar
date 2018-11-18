
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_ARQUIVOS 10
#define MAX_REGISTROS_POR_ARQUIVO 5 // Número máximo de registros lidos de cada arquivo

int ordenar( const char *nomeBase );
bool existeArquivo( const char *nomeArquivo );
int ordenar_por_intercalacao_balanceada( const char *nomeBase, int quantidadeArquivos );
int contarRegistros( FILE **arquivosEntrada, int quantidadeArquivos );

void selectionSort( int vetor[ MAX_REGISTROS_POR_ARQUIVO ], int tamanho );

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
    FILE *arquivosEntrada[ MAX_ARQUIVOS ];
    FILE *arquivosSaida[ MAX_ARQUIVOS ];
    int buffer[ MAX_ARQUIVOS ][ MAX_REGISTROS_POR_ARQUIVO ];
    char *nomeArquivo = malloc( strlen( nomeBase + MAX_ARQUIVOS ) * sizeof( char ) );
    // TODO: Verificar erros de alocação

    // ABRINDO ARQUIVOS
    for( int i = 0; i < quantidadeArquivos; i++ ) {
        sprintf( nomeArquivo, "%s%d", nomeBase, i );
        arquivosEntrada[ i ] = fopen( nomeArquivo, "rb+" );
        // TODO: Verificar erros de alocação e liberar memória
    }

    for( int i = 0; i < quantidadeArquivos; i++ ) {
        sprintf( nomeArquivo, "%s%d", nomeBase, i + quantidadeArquivos );
        arquivosSaida[ i ] = fopen( nomeArquivo, "wb+" );
        // TODO: Verificar erros de alocação e liberar memória
    }

    float totalRegistros          = contarRegistros( arquivosEntrada, quantidadeArquivos );
    int lidoAtual[ MAX_ARQUIVOS ] = {0};

    int totalPassos =
        4; // TODO: mudar para
           // teto(log10(totalRegistros/(quantidadeArquivos*MAX_REGISTROS_POR_ARQUIVO))/log10(2*quantidadeArquivos))
    int lidoTotal = 0;

    // Pegando os registros dos arquivos de entrada e ordenando
    for( int i = 0; i < quantidadeArquivos; i++ ) {
        lidoAtual[ i ] =
            fread( &buffer[ i ], MAX_REGISTROS_POR_ARQUIVO, sizeof( int ), arquivosEntrada[ i ] );
        lidoTotal += lidoAtual[ i ];
        selectionSort( buffer[ i ], lidoAtual[ i ] );
    }

    int indices[ MAX_ARQUIVOS ] = {0};

    while( lidoTotal > 0 ) {
        int min = -1;

        // inicializa min
        for( int i = 0; i < quantidadeArquivos; i++ ) {
            if( lidoAtual[ i ] > 0 ) {
                min = i;
                break;
            }
        }

        if( min == -1 ) {
            break;
        }

        for( int i = 0; i < quantidadeArquivos; i++ ) {
            if( buffer[ min ][ indices[ min ] ] > buffer[ i ][ indices[ i ] ] ) {
                min = i;
            }
        }

        fwrite( &buffer[ min ][ indices[ min ] ], 1, sizeof( int ), arquivosSaida[ 0 ] );
        printf( "min:%d %d\n", min, buffer[ min ][ indices[ min ] ] );
        indices[ min ]++;
        lidoAtual[ min ]--;
        lidoTotal--;
    }

    // TODO ordenar

    // TODO: fechar arquivos
    // TODO: leberar alocação

    return EXIT_SUCCESS;
}

int contarRegistros( FILE **arquivosEntrada, int quantidadeArquivos ) {
    int totalRegistros = 0;
    for( int i = 0; i < quantidadeArquivos; i++ ) {
        fseek( arquivosEntrada[ i ], 0, SEEK_END );
        totalRegistros += ftell( arquivosEntrada[ i ] ) / sizeof( int );
        rewind( arquivosEntrada[ i ] );
    }
    return totalRegistros;
}

void selectionSort( int vetor[ MAX_REGISTROS_POR_ARQUIVO ], int tamanho ) {
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
