#include "Fracao.h"
#include <iostream>

void operacoesAritmeticas( void );
void operacoesIncrementoEDecremento( void );
void operacoesComparacao( void );

int main( int argc, char const *argv[] ) {
    std::cout << "OPERAÇÕES ARITMETICAS" << '\n';
    operacoesAritmeticas();

    std::cout << "OPERAÇÕES INCREMENTO E DECREMENTO" << '\n';
    operacoesIncrementoEDecremento();

    std::cout << "OPERAÇÕES DE COMPARAÇÃO" << '\n';
    operacoesComparacao();

    return 0;
}

void operacoesAritmeticas( void ) {
    Fracao a( 1, 2 );
    Fracao b( 1, 3 );
    const Fracao c( 5, 2 );
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

    std::cout << a << "+" << e << "=" << a + e << '\n';
    std::cout << a << "-" << e << "=" << a - e << '\n';
    std::cout << a << "/" << e << "=" << a / e << '\n';
    std::cout << a << "*" << e << "=" << a * e << '\n';

    std::cout << '\n';

    std::cout << e << "+" << a << "=" << e + a << '\n';
    std::cout << e << "-" << a << "=" << e - a << '\n';
    std::cout << e << "/" << a << "=" << e / a << '\n';
    std::cout << e << "*" << a << "=" << e * a << '\n';

    std::cout << '\n';
}

void operacoesIncrementoEDecremento( void ) {
    Fracao a( 1, 2 );
    Fracao b( 1, 3 );
    const Fracao c( 5, 2 );
    int d = 10;
    int e = 0;

    std::cout << a << "++"
              << "=" << a++ << '\n';
    std::cout << "++" << a << "=" << ++a << '\n';
    std::cout << b << "++"
              << "=" << b++ << '\n';
    std::cout << "++" << b << "=" << ++b << '\n';

    std::cout << "++(" << a << "+" << b << ")=" << ++( a + b ) << '\n';
    std::cout << "++(" << a << "-" << b << ")=" << ++( a - b ) << '\n';
    std::cout << "++(" << a << "/" << b << ")=" << ++( a / b ) << '\n';
    std::cout << "++(" << a << "*" << b << ")=" << ++( a * b ) << '\n';

    std::cout << '\n';

    std::cout << "++(" << b << "+" << a << ")=" << ++( b + a ) << '\n';
    std::cout << "++(" << b << "-" << a << ")=" << ++( b - a ) << '\n';
    std::cout << "++(" << b << "/" << a << ")=" << ++( b / a ) << '\n';
    std::cout << "++(" << b << "*" << a << ")=" << ++( b * a ) << '\n';

    std::cout << '\n';

    std::cout << "++(" << a << "+" << c << ")=" << ++( a + c ) << '\n';
    std::cout << "++(" << a << "-" << c << ")=" << ++( a - c ) << '\n';
    std::cout << "++(" << a << "/" << c << ")=" << ++( a / c ) << '\n';
    std::cout << "++(" << a << "*" << c << ")=" << ++( a * c ) << '\n';

    std::cout << '\n';

    std::cout << "++(" << a << "+" << d << ")=" << ++( a + d ) << '\n';
    std::cout << "++(" << a << "-" << d << ")=" << ++( a - d ) << '\n';
    std::cout << "++(" << a << "/" << d << ")=" << ++( a / d ) << '\n';
    std::cout << "++(" << a << "*" << d << ")=" << ++( a * d ) << '\n';

    std::cout << '\n';

    std::cout << "++(" << d << "+" << a << ")=" << ++( d + a ) << '\n';
    std::cout << "++(" << d << "-" << a << ")=" << ++( d - a ) << '\n';
    std::cout << "++(" << d << "/" << a << ")=" << ++( d / a ) << '\n';
    std::cout << "++(" << d << "*" << a << ")=" << ++( d * a ) << '\n';

    std::cout << '\n';

    std::cout << "++(" << a << "+" << e << ")=" << ++( a + e ) << '\n';
    std::cout << "++(" << a << "-" << e << ")=" << ++( a - e ) << '\n';
    std::cout << "++(" << a << "/" << e << ")=" << ++( a / e ) << '\n';
    std::cout << "++(" << a << "*" << e << ")=" << ++( a * e ) << '\n';

    std::cout << '\n';

    std::cout << "++(" << e << "+" << a << ")=" << ++( e + a ) << '\n';
    std::cout << "++(" << e << "-" << a << ")=" << ++( e - a ) << '\n';
    std::cout << "++(" << e << "/" << a << ")=" << ++( e / a ) << '\n';
    std::cout << "++(" << e << "*" << a << ")=" << ++( e * a ) << '\n';

    std::cout << '\n';
}

void operacoesComparacao( void ) {
    Fracao a( 1, 2 );
    Fracao b( 2, 2 );
    int c = 1;

    std::cout << a << "<" << b << "=" << ( a < b ) << '\n';
    std::cout << a << "<=" << b << "=" << ( a <= b ) << '\n';
    std::cout << a << ">" << b << "=" << ( a > b ) << '\n';
    std::cout << a << ">=" << b << "=" << ( a >= b ) << '\n';
    std::cout << a << "==" << b << "=" << ( a == b ) << '\n';
    std::cout << a << "!=" << b << "=" << ( a != b ) << '\n';

    std::cout << '\n';

    std::cout << b << "<" << c << "=" << ( b < c ) << '\n';
    std::cout << b << "<=" << c << "=" << ( b <= c ) << '\n';
    std::cout << b << ">" << c << "=" << ( b > c ) << '\n';
    std::cout << b << ">=" << c << "=" << ( b >= c ) << '\n';
    std::cout << b << "==" << c << "=" << ( b == c ) << '\n';
    std::cout << b << "!=" << c << "=" << ( b != c ) << '\n';

    std::cout << '\n';

    std::cout << c << "<" << b << "=" << ( c < b ) << '\n';
    std::cout << c << "<=" << b << "=" << ( c <= b ) << '\n';
    std::cout << c << ">" << b << "=" << ( c > b ) << '\n';
    std::cout << c << ">=" << b << "=" << ( c >= b ) << '\n';
    std::cout << c << "==" << b << "=" << ( c == b ) << '\n';
    std::cout << c << "!=" << b << "=" << ( c != b ) << '\n';
}
