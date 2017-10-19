#include "Fracao.h"

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

std::ostream &operator<<( std::ostream &saida, const Fracao &fracao ) {
    saida << fracao.numerador << "/" << fracao.denominador;
    return saida;
}

std::istream &operator>>( std::istream &entrada, Fracao &fracao ) {
    int numerador, denominador;
    char barra;

    std::cin >> numerador >> barra >> denominador;

    fracao.setNumerador( numerador );
    fracao.setDenominador( denominador );

    return entrada;
}

const Fracao operator*( const int &b, const Fracao &a ) {
    return Fracao( a.numerador * b, a.denominador );
}

const Fracao operator+( const int &a, const Fracao &b ) {
    return Fracao( a * b.denominador + b.numerador, b.denominador );
}

const Fracao operator-( const int &a, const Fracao &b ) {
    return Fracao( a * b.denominador - b.numerador, b.denominador );
}

const Fracao operator/( const int &a, const Fracao &b ) {
    return Fracao( a * b.denominador, b.numerador );
}
