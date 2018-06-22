#include "../../include/Lanche.hpp"

Lanche::Lanche( const int tamanho )
    : Pilha( tamanho ) {
    tamanhoMaximo = tamanho;
}

bool Lanche::isCompleto() const {
    return isCheia();
}
bool Lanche::faltaApenasPaoSuperior() const {
    return tamanhoMaximo - getTamanho() == 1;
}