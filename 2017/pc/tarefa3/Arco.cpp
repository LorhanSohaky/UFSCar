#include "Arco.h"

Arco::Arco( const int x, const int y, const int raio ) : Figura( x, y ) {
    if( raio > 0 ) {
        this->raio = raio * 20;
    } else {
        this->raio = 20;
    }
}

void Arco::draw( const Cairo::RefPtr<Cairo::Context> &cr ) {
    cr->arc( ponto.getX(), ponto.getY(), raio, M_PI / 4, M_PI );
    cr->set_source_rgba( 100, 30, 150, 0.6 );
    cr->fill_preserve();
}
