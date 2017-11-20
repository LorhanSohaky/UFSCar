#include <iostream>
#include <string>

using namespace std;

class Animal {
  private:
    int x, y;
    string nome;

  public:
    void setX( int x ) {
        this->x = x;
    }

    void setY( int y ) {
        this->y = y;
    }

    void setNome( string nome ) {
        this->nome = nome;
    }

    Animal( string nome, int x, int y ) {
        setX( x );
        setY( y );
        setNome( nome );
    }

    virtual ~Animal() {
    }

    void mover( char dir ) {
        switch( dir ) {
            case 's':
                ++y;
                break;
            case 'i':
                --y;
                break;
            case 'd':
                ++x;
                break;
            case 'e':
                --x;
                break;
        }
        std::cout << "Move para a direção " << dir << '\n';
    }

    virtual void
    emitirSom() const = 0; // Métoo virual puro, ou seja, não existe implementação na base

    void desenhar() const {
        std::cout << "Desenha algo na posição " << x << " , " << y << '\n';
    }

    void comer() const {
        std::cout << "Comer algo." << '\n';
    }

    int getX() const {
        return x;
    }

    int getY() const {
        return y;
    }
};

class Cachorro : public Animal {
  private:
    int qtdPulgas;

  public:
    void setQtdPulgas( int qtdPulgas ) {
        if( qtdPulgas >= 0 ) {
            this->qtdPulgas = qtdPulgas;
        } else {
            this->qtdPulgas = 0;
        }
    }

    Cachorro( string nome, int x, int y, int qtdPulgas ) : Animal( nome, x, y ) {
        setQtdPulgas( qtdPulgas );
    }

    void cocar() const {
        std::cout << "Se coçando..." << '\n';
    }

    void pegarPulga() {
        if( qtdPulgas ) {
            qtdPulgas--;
            std::cout << "Pegando pulga..." << '\n';
        }
    }

    void emitirSom() const {
        std::cout << "Latindo..." << '\n';
    }

    void desenhar() const {
        std::cout << "O------" << '\n';
        std::cout << "/\\   /\\" << '\n';
    }

    ~Cachorro() {
        std::cout << "Destrutor de cachorro" << '\n';
    }
};

class Gato : public Animal {
  private:
    int qtdVidas;

  public:
    void setQtdVidas( int qtdVidas ) {
        if( qtdVidas >= 1 ) {
            this->qtdVidas = qtdVidas;
        } else {
            this->qtdVidas = 1;
        }
    }

    Gato( string nome, int x, int y, int qtdVidas ) : Animal( nome, x, y ) {
        setQtdVidas( qtdVidas );
    }

    ~Gato() {
        std::cout << "Destrutor Gato" << '\n';
    }

    int getQtdVidas() const {
        return qtdVidas;
    }

    void morrer() {
        if( qtdVidas ) {
            qtdVidas--;
            std::cout << "Perdeu uma vida..." << '\n';
        } else {
            std::cout << "Já está morto" << '\n';
        }
    }

    void emitirSom() const {
        std::cout << "Miando..." << '\n';
    }

    void desenhar() const {
        std::cout << "\\/" << '\n';
        std::cout << "O------" << '\n';
        std::cout << "/\\   /\\" << '\n';
    }
};

int main() {
    Animal *ptr;

    Cachorro c1( "Ednal", 1, 2, 1 );
    c1.desenhar();
    c1.emitirSom();

    Gato *g1 = new Gato( "Uau", 2, 2, 3 );
    g1->desenhar();

    ptr = g1;
    ptr->emitirSom();
    ptr->desenhar();
    ( (Gato *)ptr )->morrer();
    std::cout << "ponteiro" << '\n';
    delete ptr;
    return 0;
}
