#include "Vetor.h"
#include <iostream>

bool isPosicaoValida( const int posicao, const int tamanho ) {
    return ( posicao >= 0 && posicao < tamanho );
}

Vetor::Vetor( const int tamanho ) {
    if( tamanho > 0 ) {
        this->tamanho = tamanho;
    } else {
        this->tamanho = 10;
    }

    this->ponteiro = new int[this->tamanho];

    for( int i = 0; i < tamanho; i++ ) {
        this->ponteiro[i] = 0;
    }
}

Vetor::~Vetor( void ) {
    std::cout << "Destrutor" << '\n';
    delete[] this->ponteiro;
}

int Vetor::getValor( const int posicao ) const {
    if( isPosicaoValida( posicao, this->tamanho ) ) {
        return this->ponteiro[posicao];
    }

    return -1;
}

bool Vetor::setValor( const int posicao, const int valor ) {
    if( isPosicaoValida( posicao, this->tamanho ) ) {
        this->ponteiro[posicao] = valor;
        return true;
    }

    return false;
}

void Vetor::print( void ) const {
    std::cout << "Tamanho:" << this->tamanho << '\n';

    for( int i = 0; i < this->tamanho; i++ ) {
        std::cout << "p[" << i << "] = " << this->ponteiro[i] << '\n';
    }

    std::cout << '\n';
}
