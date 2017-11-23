#include "Retangulo.h"

Retangulo::Retangulo( const int x, const int y, const int lado1, const int lado2 )
    : Figura( x, y ) {
    if( lado1 > 0 && lado2 > 0 ) {
        this->lado1 = lado1 * 20;
        this->lado2 = lado2 * 20;
    } else {
        this->lado1 = 40;
        this->lado2 = 20;
    }
}

void Retangulo::draw( const Cairo::RefPtr<Cairo::Context> &cr ) {
    cr->rectangle( ponto.getX() - ( lado1 / 2 ), ponto.getY() - ( lado2 / 2 ), lado1, lado2 );
    cr->set_source_rgba( 0.0, 0.0, 20, 0.6 );
    cr->fill_preserve();
}
