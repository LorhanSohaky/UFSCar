#include "Fracao.h"
#include <iostream>

int main( int argc, char const *argv[] ) {
    Fracao a( 1, 2 );
    Fracao b( 1, 3 );

    Fracao c = a + b;

    std::cout << c.getNumerador() << "/" << c.getDenominador() << '\n';

    return 0;
}
