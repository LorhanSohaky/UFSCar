#include "Figura.h"

Figura::Figura( const int x, const int y ) : ponto( x, y ) {
}

Figura::~Figura( void ){};

void Figura::setPosition( const int x, const int y ) {
    if( x >= 0 && y >= 0 ) {
        ponto.setPosition( x, y );
    } else {
        ponto.setPosition( 0, 0 );
    }
}

void Figura::setPosition( const Ponto p ) {
    ponto = p;
}
