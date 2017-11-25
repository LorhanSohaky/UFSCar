#include "Quadrado.h"

Quadrado::Quadrado( const int x, const int y, const int lado ) : Figura( x, y ) {
    if( lado > 0 ) {
        this->lado = lado * 20;
    } else {
        this->lado = 40;
    }
}

void Quadrado::draw( const Cairo::RefPtr<Cairo::Context> &cr ) const {
    cr->rectangle( this->getX() - ( lado / 2 ), this->getY() - ( lado / 2 ), lado, lado );
    cr->set_source_rgba( 153, 0, 0, 0.6 );
    cr->fill_preserve();
}
