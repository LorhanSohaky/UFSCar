/*
TODO	 comparações
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

    Fracao operator+( const Fracao &b ) const;
    Fracao operator-( const Fracao &b ) const;
    Fracao operator*( const Fracao &b ) const;
    Fracao operator/( const Fracao &b ) const;

    Fracao operator+( const int &a ) const;
    Fracao operator-( const int &a ) const;
    Fracao operator*( const int &b ) const;
    Fracao operator/( const int &a ) const;

    friend Fracao operator*( const int &b, const Fracao &a );
    friend Fracao operator+( const int &a, const Fracao &b );
    friend Fracao operator-( const int &a, const Fracao &b );
    friend Fracao operator/( const int &a, const Fracao &b );

    friend std::ostream &operator<<( std::ostream &saida, const Fracao &fracao );
    friend std::istream &operator>>( std::istream &entrada, Fracao &fracao );

    bool operator>( const Fracao &b ) const;
    bool operator<( const Fracao &b ) const;
    bool operator==( const Fracao &b ) const;
    bool operator!=( const Fracao &b ) const;
    bool operator>=( const Fracao &b ) const;
    bool operator<=( const Fracao &b ) const;
};

#endif