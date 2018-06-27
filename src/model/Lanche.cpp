#include "Lanche.hpp"
#include "Config.hpp"

Lanche::Lanche( const int tamanho )
    : Pilha( tamanho ) {
    tamanhoMaximo = tamanho;
    topo          = nullptr;
}

bool Lanche::faltaApenasPaoSuperior() const {
    return tamanhoMaximo - getTamanho() == 1;
}

Food* Lanche::getTopo() const {
    return topo;
}

void Lanche::setPosition( const float x, const float y ) {
    if( isVazia() ) {
        return;
    }

    vetor[ 0 ]->setPosition( x, y );

    for( int i = 1; i < getTamanho(); i++ ) {
        vetor[ i ]->setPosition( x, vetor[ i - 1 ]->getPosition().y - INGREDIENTE_MARGIN );
    }
}

void Lanche::inserir( Food* const ingrediente ) {
    topo = ingrediente;
    empilhar( ingrediente );
}

Food* Lanche::remover() {
    topo = desempilhar();
    return topo;
}

void Lanche::draw( sf::RenderTarget& target, sf::RenderStates states ) const {
    if( isVazia() ) {
        return;
    }

    for( int i = 0; i < getTamanho(); i++ ) {
        target.draw( (sf::Sprite)*vetor[ i ], states );
    }
}

void Lanche::move( const float x, const float y ) {
    for( int i = 0; i < getTamanho(); i++ ) {
        vetor[ i ]->move( x, y );
    }
}

sf::Vector2f Lanche::getPosotion() {
    return topo->getPosition();
}