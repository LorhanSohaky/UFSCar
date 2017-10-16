#include <iostream>

class Fracao {
  private:
    int num;
    int den;

    friend std::ostream &operator<<( std::ostream &saida, const Fracao &a );

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
            this->den = 0;
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

        imprimir();
    }

    ~Fracao( void ) {
        std::cout << "Destrutor: ";
        imprimir();
        std::cout << '\n';
    }

    Fracao operator*( const Fracao &b ) const {
        return Fracao( this->getNum() * b.getNum(), this->getDen() * b.getDen() );
    }

    Fracao operator*( const int &b ) const {
        return Fracao( this->getNum() * b, this->getDen() );
    }

    Fracao operator+( const Fracao &b ) const {
        if( this->getDen() == b.getDen() ) {
            return Fracao( this->getNum() + b.getNum(), this->getDen() );
        } else {
            return Fracao( this->getNum() * b.getDen() + b.getNum() * this->getDen(),
                           this->getDen() * b.getDen() );
        }
    }

    Fracao operator+( const int &a ) const {
        return Fracao( a * this->getDen() + this->getNum(), this->getDen() );
    }

    Fracao operator-( const Fracao &b ) const {
        if( this->getDen() == b.getDen() ) {
            return Fracao( this->getNum() - b.getNum(), this->getDen() );
        } else {
            return Fracao( this->getNum() * b.getDen() + b.getNum() * this->getDen(),
                           this->getDen() * b.getDen() );
        }
    }

    Fracao operator-( const int &a ) const {
        return Fracao( this->getNum() - a * this->getDen(), this->getDen() );
    }

    Fracao operator/( const Fracao &b ) const {
        return Fracao( this->getNum() * b.getDen(), this->getDen() * b.getNum() );
    }

    Fracao operator/( const int &a ) const {
        return Fracao( this->getNum(), a * this->getDen() );
    }
};

Fracao operator*( const int &b, const Fracao &a ) {
    return Fracao( a.getNum() * b, a.getDen() );
}

Fracao operator+( const int &a, const Fracao &b ) {
    return Fracao( a * b.getDen() + b.getNum(), b.getDen() );
}

Fracao operator-( const int &a, const Fracao &b ) {
    return Fracao( a * b.getDen() - b.getNum(), b.getDen() );
}

Fracao operator/( const int &a, const Fracao &b ) {
    return Fracao( a * b.getDen(), b.getNum() );
}

std::ostream &operator<<( std::ostream &saida, const Fracao &a ) {
    saida << a.num << "/" << a.den;
    return saida;
}

int main( void ) {
    Fracao a( 1, 2 );
    Fracao b( 2, 4 );

    std::cout << "A:" << a << '\n';

    Fracao resultado = a * b;

    return 0;
}
