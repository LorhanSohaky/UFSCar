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

bool Vetor::getValor( const int posicao, int &val ) const {
    if( isPosicaoValida( posicao, this->tamanho ) ) {
        val = this->ponteiro[posicao];
        return true;
    }

    return false;
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
        int val;
        if( getValor( i, val ) ) {
            std::cout << "p[" << i << "] = " << val << '\n';
        }
    }

    std::cout << '\n';
}
