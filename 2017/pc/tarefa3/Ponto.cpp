#include "Ponto.h"

Ponto::Ponto( const int x, const int y ) {
    setPosition( x, y );
}

void Ponto::setPosition( const int x, const int y ) {
    this->x = x;
    this->y = y;
}

int Ponto::getX( void ) {
    return x;
}

int Ponto::getY( void ) {
    return y;
}
