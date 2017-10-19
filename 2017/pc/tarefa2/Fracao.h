/*
TODO	Operações aritméticas, comparações, entrada
                Operações entre frações e inteiros
*/

#ifndef FRACAO_H
#define FRACAO_H

#include <iostream>

class Fracao {
  private:
    int numerador;
    int denominador;

  public:
    Fracao( const int numerador = 0, const int denominador = 1 );
    ~Fracao( void );

    void setNumerador( const int numerador );
    int getNumerador( void ) const;

    void setDenominador( const int denominador );
    int getDenominador( void ) const;

    Fracao operator+( Fracao &b );

    friend std::ostream &operator<<( std::ostream &saida, const Fracao &fracao );
};

#endif
