#include "Fracao.h"
#include <iostream>

void operacoesAritmeticas( void );

int main( int argc, char const *argv[] ) {
    operacoesAritmeticas();

    return 0;
}

void operacoesAritmeticas( void ) {
    Fracao a( 1, 2 );
    Fracao b( 1, 3 );
    Fracao c( 5, 2 );
    int d = 10;
    int e = 0;

    std::cout << a << "+" << b << "=" << a + b << '\n';
    std::cout << a << "-" << b << "=" << a - b << '\n';
    std::cout << a << "/" << b << "=" << a / b << '\n';
    std::cout << a << "*" << b << "=" << a * b << '\n';

    std::cout << '\n';

    std::cout << b << "+" << a << "=" << b + a << '\n';
    std::cout << b << "-" << a << "=" << b - a << '\n';
    std::cout << b << "/" << a << "=" << b / a << '\n';
    std::cout << b << "*" << a << "=" << b * a << '\n';

    std::cout << '\n';

    std::cout << a << "+" << c << "=" << a + c << '\n';
    std::cout << a << "-" << c << "=" << a - c << '\n';
    std::cout << a << "/" << c << "=" << a / c << '\n';
    std::cout << a << "*" << c << "=" << a * c << '\n';

    std::cout << '\n';

    std::cout << a << "+" << d << "=" << a + d << '\n';
    std::cout << a << "-" << d << "=" << a - d << '\n';
    std::cout << a << "/" << d << "=" << a / d << '\n';
    std::cout << a << "*" << d << "=" << a * d << '\n';

    std::cout << '\n';

    std::cout << d << "+" << a << "=" << d + a << '\n';
    std::cout << d << "-" << a << "=" << d - a << '\n';
    std::cout << d << "/" << a << "=" << d / a << '\n';
    std::cout << d << "*" << a << "=" << d * a << '\n';

    std::cout << '\n';

    std::cout << a << "+" << d << "=" << a + e << '\n';
    std::cout << a << "-" << d << "=" << a - e << '\n';
    std::cout << a << "/" << d << "=" << a / e << '\n';
    std::cout << a << "*" << d << "=" << a * e << '\n';

    std::cout << '\n';

    std::cout << d << "+" << a << "=" << e + a << '\n';
    std::cout << d << "-" << a << "=" << e - a << '\n';
    std::cout << d << "/" << a << "=" << e / a << '\n';
    std::cout << d << "*" << a << "=" << e * a << '\n';

    std::cout << '\n';
}
