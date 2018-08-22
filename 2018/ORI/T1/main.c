/*
    Tamanho máximo do nome do arquivo?
    Os campo têm até 200 caracteres válidos? Poq se for isso os vetores
    precisam ser do tamanh 201 para o \0

    Quando não é possível colocar num bloco, devo completar o bloco com quais caracteres?
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_BYTES 510 // 512 - 2 bytes little-endian
#define ADITIONAL_BYTES 5

typedef struct {
    char ra[ 7 ];
    char nome[ 201 ];
    char curso[ 201 ];
    char ano[ 5 ];
} Registro;

int main( int argc, char const *argv[] ) {
    char nomeArquivo[ 200 ];
    unsigned int quantidadeRegistros = 0;
    scanf( "%s%d", nomeArquivo, &quantidadeRegistros );

    strcat( nomeArquivo, ".dat" );

    Registro registro;
    FILE *arquivo = fopen( nomeArquivo, "w" );

    if( !arquivo ) {
        fprintf( stderr, "Erro ao criar o arquivo!\n" );
        exit( EXIT_FAILURE );
    }

    unsigned int quantidadeBytes = 0;
    for( unsigned int i = 0; i < quantidadeRegistros; i++ ) {
        scanf( " %s", registro.ra );
        scanf( " %[^\n]", registro.nome );
        scanf( " %s", registro.curso );
        scanf( " %s", registro.ano );

        unsigned int tamanhoRegistro = strlen( registro.ra ) + strlen( registro.nome ) +
                                       strlen( registro.curso ) + strlen( registro.ano );
        tamanhoRegistro *= sizeof( char );
        tamanhoRegistro += ADITIONAL_BYTES;

        quantidadeBytes += tamanhoRegistro;

        fprintf( arquivo,
                 "%s%c%s%c%s%c%s%c%c",
                 registro.ra,
                 0x0D,
                 registro.nome,
                 0x0D,
                 registro.curso,
                 0x0D,
                 registro.ano,
                 0x0D,
                 0x0A );
    }

    fclose( arquivo );

    return 0;
}