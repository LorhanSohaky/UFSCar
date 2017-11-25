#include "Elipse.h"

Elipse::Elipse( const int x, const int y, const int raio ) : Figura( x, y ) {
    if( raio > 0 ) {
        this->raio = raio;
    } else {
        this->raio = 10;
    }
}

void Elipse::draw( const Cairo::RefPtr<Cairo::Context> &cr ) const {
    cr->scale( 1, 0.7 );
    cr->arc( this->getX(), this->getY(), raio * 20.0, 0.0, 2.0 * M_PI );
    cr->set_source_rgba( 102, 0, 51, 0.6 );
    cr->fill_preserve();
}
