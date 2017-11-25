#include "Figura.h"

Figura::Figura( const int x, const int y ) : Ponto( x, y ) {
}

Figura::~Figura( void ){};

void Figura::setPosition( const int x, const int y ) {
    if( x >= 0 && y >= 0 ) {
        Ponto::setPosition( x, y );
    } else {
        Ponto::setPosition( 0, 0 );
    }
}

void Figura::setPosition( const Ponto p ) {
    this->x = p.getX();
    this->y = p.getY();
}
