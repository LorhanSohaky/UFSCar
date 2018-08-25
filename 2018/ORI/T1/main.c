#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BLOCK_SIZE 512
#define MAX_BYTES ( 512 - 2 ) // 512 - 2 bytes little-endian
#define END_FIELD 0x0D
#define END_RECORD 0x0A

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
void buscarRA( const char *nomeArquivo, const char *ra );
void gerarList( const char *nomeArquivo );

unsigned int calcularTamanhoRegistro( const Registro registro );
void escreverBloco( FILE *arquivo, char *bloco, const unsigned short int quantidadeBytes );
LittleEndian toLittleEndian( const unsigned short int numero );
unsigned short int revertLittleEndian( const LittleEndian little );

int main( int argc, char const *argv[] ) {
    char nomeArquivo[ 21 ];
    unsigned int quantidadeRegistros;

    scanf( "%s%d", nomeArquivo, &quantidadeRegistros );

    escreverArquivo( nomeArquivo, quantidadeRegistros );

    char ra[ 7 ];

    while( scanf( " %s", ra ) ) {
        if( strcmp( ra, "0" ) == 0 ) {
            break;
        }

        buscarRA( nomeArquivo, ra );
    }

    gerarList( nomeArquivo );

    return 0;
}

void escreverArquivo( const char *nomeArquivo, const unsigned int quantidadeRegistros ) {
    char nomeArquivoComExtensao[ 25 ];

    strcpy( nomeArquivoComExtensao, nomeArquivo );
    strcat( nomeArquivoComExtensao, ".dat" );

    FILE *arquivo = fopen( nomeArquivoComExtensao, "wb" );

    if( !arquivo ) {
        fprintf( stderr, "Erro ao criar o arquivo %s!\n", nomeArquivoComExtensao );
        exit( EXIT_FAILURE );
    }

    char bloco[ BLOCK_SIZE ];
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
                 END_FIELD,
                 registro.nome,
                 END_FIELD,
                 registro.curso,
                 END_FIELD,
                 registro.ano,
                 END_FIELD,
                 END_RECORD );
        quantidadeBytes += tamanhoRegistro;
    }

    escreverBloco( arquivo, bloco, quantidadeBytes );

    fclose( arquivo );
}

void buscarRA( const char *nomeArquivo, const char *ra ) {
    char nomeArquivoEntradaComExtensao[ 25 ];
    char nomeArquivoSaidaComExtensao[ 25 ];

    strcpy( nomeArquivoEntradaComExtensao, nomeArquivo );
    strcpy( nomeArquivoSaidaComExtensao, nomeArquivo );
    strcat( nomeArquivoEntradaComExtensao, ".dat" );
    strcat( nomeArquivoSaidaComExtensao, ".out" );

    FILE *arquivoEntrada = fopen( nomeArquivoEntradaComExtensao, "rb" );
    FILE *arquivoSaida   = fopen( nomeArquivoSaidaComExtensao, "a" );

    if( !arquivoEntrada ) {
        fprintf( stderr, "Erro ao abrir o arquivo %s!\n", nomeArquivoEntradaComExtensao );
        exit( EXIT_FAILURE );
    }

    if( !arquivoSaida ) {
        fprintf( stderr, "Erro ao criar o arquivo %s!\n", nomeArquivoSaidaComExtensao );
        exit( EXIT_FAILURE );
    }

    char bloco[ BLOCK_SIZE ];
    char *inicioRegistro = NULL;
    do {
        fread( bloco, sizeof( bloco ), 1, arquivoEntrada );
        inicioRegistro = strstr( bloco, ra );
    } while( !inicioRegistro && !feof( arquivoEntrada ) );

    if( inicioRegistro ) {
        char *finalRegistro = strchr( inicioRegistro, END_RECORD );
        *finalRegistro      = '\0';

        char *finalCampo = strchr( inicioRegistro, END_FIELD );
        while( finalCampo ) {
            *finalCampo = ':';
            finalCampo  = strchr( inicioRegistro, END_FIELD );
        }
        *finalRegistro         = '\n';
        *( finalRegistro + 1 ) = '\0';
        fprintf( arquivoSaida, "%s", inicioRegistro );
    } else {
        fprintf( arquivoSaida, "*\n" );
    }

    fclose( arquivoEntrada );
    fclose( arquivoSaida );
}

void gerarList( const char *nomeArquivo ) {
    char nomeArquivoEntradaComExtensao[ 25 ];
    char nomeArquivoSaidaComExtensao[ 25 ];

    strcpy( nomeArquivoEntradaComExtensao, nomeArquivo );
    strcpy( nomeArquivoSaidaComExtensao, nomeArquivo );
    strcat( nomeArquivoEntradaComExtensao, ".dat" );
    strcat( nomeArquivoSaidaComExtensao, ".lst" );

    FILE *arquivoEntrada = fopen( nomeArquivoEntradaComExtensao, "rb" );
    FILE *arquivoSaida   = fopen( nomeArquivoSaidaComExtensao, "w" );

    if( !arquivoEntrada ) {
        fprintf( stderr, "Erro ao abrir o arquivo %s!\n", nomeArquivoEntradaComExtensao );
        exit( EXIT_FAILURE );
    }

    if( !arquivoSaida ) {
        fprintf( stderr, "Erro ao criar o arquivo %s!\n", nomeArquivoSaidaComExtensao );
        exit( EXIT_FAILURE );
    }

    char bloco[ BLOCK_SIZE ];
    unsigned int quantidadeBlocos = 0;
    while( fread( bloco, sizeof( bloco ), 1, arquivoEntrada ) ) {
        unsigned int quantidadeRegistros = 0;

        LittleEndian little;
        little.number[ 0 ] = bloco[ MAX_BYTES ];
        little.number[ 1 ] = bloco[ MAX_BYTES + 1 ];

        unsigned short int tamanhoBloco = revertLittleEndian( little );
        fprintf( arquivoSaida, "Bloco %d (%d bytes)\n", quantidadeBlocos, tamanhoBloco );

        char *posicao = NULL;
        while( ( posicao = strchr( bloco, END_FIELD ) ) ) {
            *posicao = ':';
        }

        posicao = bloco;
        while( posicao = strchr( posicao, END_RECORD ) ) {
            posicao += 1;
            quantidadeRegistros++;
        }

        bloco[ MAX_BYTES ] = '\0';

        fprintf( arquivoSaida, "%s%d registros", bloco, quantidadeRegistros );

        if( !feof( arquivoEntrada ) ) {
            fprintf( arquivoSaida, "\n" );
        }

        quantidadeBlocos++;
    }

    fclose( arquivoEntrada );
    fclose( arquivoSaida );
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

unsigned short int revertLittleEndian( const LittleEndian little ) {
    unsigned short int primeiroByte = ( little.number[ 1 ] & 0xFF ) << 8;
    unsigned short int segundoByte  = little.number[ 0 ] & 0xFF;

    return primeiroByte | segundoByte;
}