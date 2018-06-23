#include "../../include/Lanche.hpp"

#define INGREDIENTE_MARGIN 15

Lanche::Lanche( const int tamanho )
    : Pilha( tamanho ) {
    tamanhoMaximo = tamanho;
}

bool Lanche::faltaApenasPaoSuperior() const {
    return tamanhoMaximo - getTamanho() == 1;
}

void Lanche::setPosition( float x, float y ) {
    if( isVazia() ) {
        return;
    }

    vetor[ 0 ]->setPosition( x, y );

    for( int i = 1; i < tamanho; i++ ) {
        vetor[ i ]->setPosition( x, vetor[ i - 1 ]->getPosition().y - INGREDIENTE_MARGIN );
    }
}