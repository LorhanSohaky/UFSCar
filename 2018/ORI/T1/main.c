/*
    Tamanho máximo do nome do arquivo?
    Os campo têm até 200 caracteres válidos? Poq se for isso os vetores
    precisam ser do tamanh 201 para o \0

    Quando não é possível colocar num bloco, devo completar o bloco com quais caracteres?
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BLOCK_SIZE 512
#define MAX_BYTES ( 512 - 2 ) // 512 - 2 bytes little-endian

#define ADITIONAL_BYTES 5

typedef struct {
    char ra[ 7 ];
    char nome[ 201 ];
    char curso[ 201 ];
    char ano[ 5 ];
} Registro;

typedef struct {
    char number[ 2 ];
} LittleEndian;

void escreverArquivo( const char *nomeArquivo, const unsigned int quantidadeRegistros );

unsigned int calcularTamanhoRegistro( const Registro registro );
void escreverBloco( FILE *arquivo, char *bloco, const unsigned short int quantidadeBytes );
LittleEndian toLittleEndian( const unsigned short int numero );

int main( int argc, char const *argv[] ) {
    char nomeArquivo[ 21 ];
    unsigned int quantidadeRegistros;

    scanf( "%s%d", nomeArquivo, &quantidadeRegistros );
    strcat( nomeArquivo, ".dat" );

    escreverArquivo( nomeArquivo, quantidadeRegistros );
    return 0;
}

void escreverArquivo( const char *nomeArquivo, const unsigned int quantidadeRegistros ) {
    FILE *arquivo = fopen( nomeArquivo, "w" );

    if( !arquivo ) {
        fprintf( stderr, "Erro ao criar o arquivo!\n" );
        exit( EXIT_FAILURE );
    }

    char bloco[ 512 ];
    Registro registro;
    unsigned int quantidadeBytes = 0;

    for( unsigned int i = 0; i < quantidadeRegistros; i++ ) {
        scanf( "%s ", registro.ra );
        scanf( "%[^\n] ", registro.nome );
        scanf( "%s ", registro.curso );
        scanf( "%s ", registro.ano );

        unsigned int tamanhoRegistro = calcularTamanhoRegistro( registro );

        if( quantidadeBytes + tamanhoRegistro > MAX_BYTES ) {
            escreverBloco( arquivo, bloco, quantidadeBytes );
            quantidadeBytes = 0;
        }

        sprintf( &bloco[ quantidadeBytes ],
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
        quantidadeBytes += tamanhoRegistro;
    }

    escreverBloco( arquivo, bloco, quantidadeBytes );

    fclose( arquivo );
}

unsigned int calcularTamanhoRegistro( const Registro registro ) {
    unsigned int tamanhoRegistro = strlen( registro.ra ) + strlen( registro.nome ) +
                                   strlen( registro.curso ) + strlen( registro.ano );
    tamanhoRegistro *= sizeof( char );
    tamanhoRegistro += ADITIONAL_BYTES;
    return tamanhoRegistro;
}

void escreverBloco( FILE *arquivo, char *bloco, const unsigned short int quantidadeBytes ) {
    LittleEndian little = toLittleEndian( quantidadeBytes );
    sprintf( &bloco[ MAX_BYTES ], "%c%c", little.number[ 0 ], little.number[ 1 ] );
    fwrite( bloco, sizeof( char ) * BLOCK_SIZE, 1, arquivo );
}

LittleEndian toLittleEndian( const unsigned short int numero ) {
    unsigned short int primeiroByte = ( numero & 0xFF00 ) >> 8; // 0xFF00 = 11111111 00000000
    unsigned short int segundoByte  = ( numero & 0xFF );        // 0xFF = 00000000 11111111

    LittleEndian little;
    little.number[ 0 ] = segundoByte;
    little.number[ 1 ] = primeiroByte;

    return little;
}