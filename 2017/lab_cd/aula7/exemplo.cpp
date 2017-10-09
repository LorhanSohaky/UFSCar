#include <iostream>

class Fracao {
  private:
    int num;
    int den;

  public:
    void imprimir( void ) {
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
};

Fracao operator*( const Fracao &a, const Fracao &b ) {
    Fracao resultado( a.getNum() * b.getNum(), a.getDen() * b.getDen() );

    return resultado;
}

int main( void ) {
    Fracao a( 1, 2 );
    Fracao b( 2, 4 );

    a.imprimir();
    b.imprimir();

    Fracao resultado = a * b;

    resultado.imprimir();

    return 0;
}
