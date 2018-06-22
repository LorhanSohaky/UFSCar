#include "../../include/Pilha.hpp"

Pilha::Pilha( const int tamanho ) {
    if( !( tamanho > 0 ) ) {
        std::string exception = "Tamanho inválido\n";
        throw std::runtime_error( exception );
    }

    topo = -1;

    this->tamanho = tamanho;
    vetor         = new Food*[ tamanho ];
}

Pilha::~Pilha() {
    delete[] vetor;
}

bool Pilha::isVazia() const {
    return topo == -1;
}

bool Pilha::isCheia() const {
    return topo == tamanho - 1;
}

int Pilha::getTamanho() const {
    return topo + 1;
}

void Pilha::empilhar( Food* elemento ) {
    if( isCheia() ) {
        std::string exception = "Pilha cheia\n";
        throw std::runtime_error( exception );
    }

    topo++;
    vetor[ topo ] = elemento;
}

Food* Pilha::desempilhar() {
    if( isVazia() ) {
        std::string exception = "Pilha vazia\n";
        throw std::runtime_error( exception );
    }

    topo--;

    return vetor[ topo + 1 ];
}

void Pilha::draw( sf::RenderTarget& target, sf::RenderStates states ) const {
    for( int i = 0; i < getTamanho(); i++ ) {
        target.draw( (sf::Sprite)*vetor[ i ], states );
    }
}