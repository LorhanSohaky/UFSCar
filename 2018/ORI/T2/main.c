
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_ARQUIVOS 10
#define MAX_REGISTROS_POR_ARQUIVO 5 // Número máximo de registros lidos de cada arquivo

int ordenar( const char *nomeBase );
int contarArquivos( const char *nomeBase );
bool existeArquivo( const char *nomeArquivo );
int intercalar( const char *nomeBase, int quantidadeArquivos );
bool leuTodosOsArquivosPorCompleto( FILE *arquivosEntrada[ MAX_ARQUIVOS ], int quantidadeArquivos );
int pegaMenor( const int buffer[][ MAX_REGISTROS_POR_ARQUIVO ],
               const int quantidadeArquivos,
               const int *indices,
               const int *lidoAtual );

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

    quantidadeArquivos = contarArquivos( nomeBase );

    if( quantidadeArquivos == 0 ) {
        fprintf( stderr, "Nao existe outros arquivos a patir do arquivo base especificado!\n" );
        return EXIT_FAILURE;
    }

    return intercalar( nomeBase, quantidadeArquivos );
}

int contarArquivos( const char *nomeBase ) {
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

    return quantidadeArquivos;
}

bool existeArquivo( const char *nomeArquivo ) {
    FILE *arquivo = fopen( nomeArquivo, "rb" );
    bool result   = arquivo != NULL;

    if( result ) {
        fclose( arquivo );
    }

    return result;
}

int intercalar( const char *nomeBase, int quantidadeArquivos ) {
    FILE *arquivosEntrada[ MAX_ARQUIVOS ];
    FILE *arquivoSaida;
    int buffer[ MAX_ARQUIVOS ][ MAX_REGISTROS_POR_ARQUIVO ];

    char *nomeArquivo = malloc( strlen( nomeBase + MAX_ARQUIVOS ) * sizeof( char ) );
    if( nomeArquivo == NULL ) {
        fprintf( stderr, "Problema com alocacao dinamica! Possivel falta de memoria\n" );
        return EXIT_FAILURE;
    }

    for( int i = 0; i < quantidadeArquivos; i++ ) {
        sprintf( nomeArquivo, "%s%d", nomeBase, i );
        arquivosEntrada[ i ] = fopen( nomeArquivo, "rb" );
        if( arquivosEntrada[ i ] == NULL ) {
            fprintf( stderr, "Problema na abertura do arquivo %s\n", nomeArquivo );
            // TODO: Verificar erros de alocação e liberar memória
        }
    }

    arquivoSaida = fopen( nomeBase, "wb" );
    if( arquivoSaida == NULL ) {
        fprintf( stderr, "Problema na abertura do arquivo %s\n", nomeBase );
        // TODO: Verificar erros de alocação e liberar memória
    }

    while( !leuTodosOsArquivosPorCompleto( arquivosEntrada, quantidadeArquivos ) ) {
        int lidoAtual[ MAX_ARQUIVOS ] = {0};

        for( int i = 0; i < quantidadeArquivos; i++ ) {
            lidoAtual[ i ] = fread(
                buffer[ i ], sizeof( int ), MAX_REGISTROS_POR_ARQUIVO, arquivosEntrada[ i ] );
        }

        int indices[ MAX_ARQUIVOS ] = {0};

        int min = pegaMenor( buffer, quantidadeArquivos, indices, lidoAtual );
        while( min != -1 ) {
            fwrite( &buffer[ min ][ indices[ min ] ], sizeof( int ), 1, arquivoSaida );
            indices[ min ]++;

            if( indices[ min ] ==
                lidoAtual[ min ] ) { // Para cobrir o caso de o último elemento do buffer 1 ser
                                     // maior que o primeiro elemento da próxima leitura do buffer 2
                lidoAtual[ min ] = fread( buffer[ min ],
                                          sizeof( int ),
                                          MAX_REGISTROS_POR_ARQUIVO,
                                          arquivosEntrada[ min ] );
                indices[ min ]   = 0;
            }
            min = pegaMenor( buffer, quantidadeArquivos, indices, lidoAtual );
        }
    }

    for( int i = 0; i < quantidadeArquivos; i++ ) {
        fclose( arquivosEntrada[ i ] );
    }
    fclose( arquivoSaida );
    free( nomeArquivo );

    return EXIT_SUCCESS;
}

bool leuTodosOsArquivosPorCompleto( FILE *arquivosEntrada[ MAX_ARQUIVOS ],
                                    int quantidadeArquivos ) {
    for( int i = 0; i < quantidadeArquivos; i++ ) {
        if( !feof( arquivosEntrada[ i ] ) ) {
            return false;
        }
    }
    return true;
}

int pegaMenor( const int buffer[][ MAX_REGISTROS_POR_ARQUIVO ],
               const int quantidadeArquivos,
               const int *indices,
               const int *lidoAtual ) {
    int min = -1;

    for( int i = 0; i < quantidadeArquivos; i++ ) {
        if( lidoAtual[ i ] > 0 && indices[ i ] < lidoAtual[ i ] ) {
            min = i;
            break;
        }
    }

    if( min != -1 ) {
        for( int i = 0; i < quantidadeArquivos; i++ ) {
            if( buffer[ min ][ indices[ min ] ] > buffer[ i ][ indices[ i ] ] &&
                indices[ i ] < lidoAtual[ i ] ) {
                min = i;
            }
        }
    }

    return min;
}