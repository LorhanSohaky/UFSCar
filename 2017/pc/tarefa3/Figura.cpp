#include "Figura.h"

Figura::Figura( const int x, const int y ) {
    setPosition( x, y );
}

void Figura::setPosition( const int x, const int y ) {
    if( x >= 0 ) {
        this->x = x;
    }
    if( y >= 0 ) {
        this->y = y;
    }
}
