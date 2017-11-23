#include "Quadrado.h"

Quadrado::Quadrado( const int x, const int y, const int lado ) : Figura( x, y ) {
    if( lado > 0 ) {
        this->lado = lado * 20;
    } else {
        this->lado = 40;
    }
}

void Quadrado::draw( const Cairo::RefPtr<Cairo::Context> &cr ) {
    cr->rectangle( ponto.getX() - ( lado / 2 ), ponto.getY() - ( lado / 2 ), lado, lado );
    cr->set_source_rgba( 0.0, 0.0, 255, 0.6 );
    cr->fill_preserve();
}
