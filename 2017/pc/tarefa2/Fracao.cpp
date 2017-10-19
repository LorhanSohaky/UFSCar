#include "Fracao.h"
#include <iostream>

Fracao::Fracao( const int numerador, const int denominador ) {
    setNumerador( numerador );
    setDenominador( denominador );
}

Fracao::~Fracao( void ) {
    std::cout << "Destrutor:" << this->numerador << "/" << this->denominador << '\n';
}

void Fracao::setNumerador( const int numerador ) {
    this->numerador = numerador;
}

int Fracao::getNumerador( void ) const {
    return this->numerador;
}

void Fracao::setDenominador( const int denominador ) {
    if( denominador != 0 ) {
        this->denominador = denominador;
    } else {
        std::cout << "Denominador inválido!" << '\n';
        this->denominador = 1;
    }
}

int Fracao::getDenominador( void ) const {
    return this->denominador;
}

Fracao Fracao::operator+( Fracao &b ) {
    if( this->denominador == b.denominador ) {
        return Fracao( this->numerador + b.numerador, this->denominador );
    } else {
        return Fracao( this->numerador * b.denominador + b.numerador * this->denominador,
                       this->denominador * b.denominador );
    }
}
