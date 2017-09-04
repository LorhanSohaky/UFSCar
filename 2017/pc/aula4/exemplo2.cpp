#include <iostream>

class ArCondicionado {
  public:
    ArCondicionado( int modelo = 0 ) {
        this->modelo = modelo;
        estado = false;
        temperatura = 20;
        velocidade = 1;
    }

    bool ligaDesliga() {
        estado = !estado;
        return estado;
    }

    void aumentaTemperatura() {
        if( temperatura < 32 ) {
            temperatura++;
        }
    }

    void diminuiTemperatura() {
        if( temperatura > 16 ) {
            temperatura--;
        }
    }

    void aumentaVelocidade() {
        if( velocidade < 3 ) {
            velocidade++;
        }
    }

    void diminuiVelocidade() {
        if( velocidade > 1 ) {
            velocidade--;
        }
    }

    void mostrar() {
        if( estado == false ) {
            std::cout << "Ar condicionado desligado" << '\n';
        } else {
            std::cout << "Ar condicionado ligado" << '\n';
            std::cout << "Temperatura" << temperatura << '\n';
            std::cout << "Velocidade" << velocidade << '\n';
        }
    }

  private:
    int modelo, temperatura, velocidade;
    bool estado;
};

int main() {
    ArCondicionado ar( 1 );
    return 0;
}
