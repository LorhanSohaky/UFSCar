#include "Lanche.hpp"
#include "Config.hpp"

Lanche::Lanche( const int tamanho )
    : Pilha( tamanho ) {
    tamanhoMaximo = tamanho;
}

bool Lanche::faltaApenasPaoSuperior() const {
    return tamanhoMaximo - getTamanho() == 1;
}

Food* Lanche::getTopo() const {
    return vetor[ getTamanho() - 1 ];
}

void Lanche::setPosition( float x, float y ) {
    if( isVazia() ) {
        return;
    }

    vetor[ 0 ]->setPosition( x, y );

    for( int i = 1; i < getTamanho(); i++ ) {
        vetor[ i ]->setPosition( x, vetor[ i - 1 ]->getPosition().y - INGREDIENTE_MARGIN );
    }
}