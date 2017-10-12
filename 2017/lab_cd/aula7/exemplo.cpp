#include <iostream>

class Fracao {
  private:
    int num;
    int den;

  public:
    void imprimir( void ) const {
        std::cout << getNum() << "/" << getDen() << '\n';
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

    Fracao operator+( const Fracao &b ) const {
        if( this->getDen() == b.getDen() ) {
            return Fracao( this->getNum() + b.getNum(), this->getDen() );
        } else {
            return Fracao( this->getNum() * b.getDen() + b.getNum() * this->getDen(),
                           this->getDen() * b.getDen() );
        }
    }

    Fracao operator-( const Fracao &b ) const {
        if( this->getDen() == b.getDen() ) {
            return Fracao( this->getNum() - b.getNum(), this->getDen() );
        } else {
            return Fracao( this->getNum() * b.getDen() + b.getNum() * this->getDen(),
                           this->getDen() * b.getDen() );
        }
    }

    Fracao operator/( const Fracao &b ) const {
        return Fracao( this->getNum() * b.getDen(), this->getDen() * b.getNum() );
    }
};

int main( void ) {
    Fracao a( 1, 2 );
    Fracao b( 2, 4 );

    a.imprimir();
    b.imprimir();

    Fracao resultado = a * b;

    resultado.imprimir();

    return 0;
}
