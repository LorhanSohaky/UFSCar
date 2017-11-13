#include <iostream>

class Fracao {
  private:
    int num;
    int den;

    friend std::ostream &operator<<( std::ostream &saida, const Fracao &a );
    friend std::istream &operator>>( std::istream &entrada, Fracao &a );

    friend const Fracao operator*( const int &b, const Fracao &a );
    friend const Fracao operator+( const int &a, const Fracao &b );
    friend const Fracao operator-( const int &a, const Fracao &b );
    friend const Fracao operator/( const int &a, const Fracao &b );

  public:
    void imprimir( void ) const {
        std::cout << *this << '\n';
    }

    void setNum( const int num ) {
        this->num = num;
    }

    void setDen( const int den ) {
        if( den != 0 ) {
            this->den = den;
        } else {
            std::cout << "Erro denominador" << '\n';
            this->den = 1;
        }
    }

    int getNum( void ) const {
        return num;
    }

    int getDen( void ) const {
        return den;
    }

    Fracao( const int num, const int den ) {
        setNum( num );
        setDen( den );
    }

    ~Fracao( void ) {
        std::cout << "Destrutor: ";
        imprimir();
        std::cout << '\n';
    }

    const Fracao operator*( const Fracao &b ) const {
        return Fracao( this->num * b.num, this->den * b.den );
    }

    const Fracao operator*( const int &b ) const {
        return Fracao( this->num * b, this->den );
    }

    const Fracao operator+( const Fracao &b ) const {
        if( this->den == b.den ) {
            return Fracao( this->num + b.num, this->den );
        } else {
            return Fracao( this->num * b.den + b.num * this->den, this->den * b.den );
        }
    }

    const Fracao operator+( const int &a ) const {
        return Fracao( this->num + a * this->den, this->den );
    }

    const Fracao operator-( const Fracao &b ) const {
        if( this->den == b.den ) {
            return Fracao( this->num + b.num, this->den );
        } else {
            return Fracao( this->num * b.den - b.num * this->den, this->den * b.den );
        }
    }

    const Fracao operator-( const int &a ) const {
        return Fracao( this->num - a * this->den, this->den );
    }

    const Fracao operator/( const Fracao &b ) const {
        return Fracao( this->num * b.den, this->den * b.num );
    }

    const Fracao operator/( const int &a ) const {
        return Fracao( this->num, a * this->den );
    }

    bool operator>( const Fracao &b ) const {
        return ( (float)this->num / this->den > (float)b.num / b.den );
    }

    bool operator<( const Fracao &b ) const {
        return ( (float)this->num / this->den < (float)b.num / b.den );
    }

    bool operator==( const Fracao &b ) const {
        return ( (float)this->num / this->den == (float)b.num / b.den );
    }

    bool operator!=( const Fracao &b ) const {
        return ( !( *this == b ) );
    }

    bool operator>=( const Fracao &b ) const {
        return ( *this > b || *this == b );
    }

    bool operator<=( const Fracao &b ) const {
        return ( *this < b || *this == b );
    }

    Fracao &operator++( void ) {
        this->num += this->den;
        return *this;
    }

    Fracao operator++( int ) {
        Fracao antes = *this;

        this->num += this->den;
        return antes;
    }
};

const Fracao operator*( const int &b, const Fracao &a ) {
    return Fracao( a.num * b, a.den );
}

const Fracao operator+( const int &a, const Fracao &b ) {
    return Fracao( a * b.den + b.num, b.den );
}

const Fracao operator-( const int &a, const Fracao &b ) {
    return Fracao( a * b.den - b.num, b.den );
}

const Fracao operator/( const int &a, const Fracao &b ) {
    return Fracao( a * b.den, b.num );
}

std::istream &operator>>( std::istream &entrada, Fracao &a ) { // Leitura num / den
    int numerador, denominador;
    char barra;

    entrada >> numerador >> barra >> denominador;

    a.setNum( numerador );
    a.setDen( denominador );

    return entrada;
}

std::ostream &operator<<( std::ostream &saida, const Fracao &a ) {
    saida << a.num << "/" << a.den;
    return saida;
}

int main( void ) {
    Fracao a( 1, 2 );
    Fracao b( 1, 4 );
    Fracao c( 3, 2 );

    std::cout << a + b << '\n';
    std::cout << a - b << '\n';
    std::cout << a * b << '\n';
    std::cout << a / b << '\n';

    std::cout << b / a << '\n';
    std::cout << b * a << '\n';

    std::cout << a + c << '\n';
    std::cout << c - a << '\n';
    std::cout << c / a << '\n';
    std::cout << a / c << '\n';

    if( b > a ) {
        std::cout << "B>A" << '\n';
    } else {
        std::cout << "B<=A" << '\n';
    }

    std::cin >> a;
    std::cout << a << '\n';

    return 0;
}
