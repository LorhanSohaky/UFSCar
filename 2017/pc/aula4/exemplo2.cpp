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
        if( estado == true && temperatura < 32 ) {
            temperatura++;
        }
    }

    void diminuiTemperatura() {
        if( estado == true && temperatura > 16 ) {
            temperatura--;
        }
    }

    void aumentaVelocidade() {
        if( estado == true && velocidade < 3 ) {
            velocidade++;
        }
    }

    void diminuiVelocidade() {
        if( estado == true && velocidade > 1 ) {
            velocidade--;
        }
    }

    void mostrar() {
        if( estado == false ) {
            std::cout << "Ar condicionado desligado" << '\n';
        } else {
            std::cout << "Ar condicionado ligado" << '\n';
            std::cout << "Temperatura: " << temperatura << '\n';
            std::cout << "Velocidade: " << velocidade << '\n';
        }
    }

  private:
    int modelo, temperatura, velocidade;
    bool estado;
};

int main() {
    ArCondicionado ar( 1 );

    int opcao = 0;

    do {
        std::cout << "1- Liga/Desliga" << '\n';
        std::cout << "2- Aumentar temperatura" << '\n';
        std::cout << "3- Diminuir temperatura" << '\n';
        std::cout << "4- Aumentar velocidade" << '\n';
        std::cout << "5- Diminuir velocidade" << '\n';
        std::cout << "6- Sair" << '\n';

        std::cin >> opcao;

        switch( opcao ) {
            case 1:
                ar.ligaDesliga();
                break;
            case 2:
                ar.aumentaTemperatura();
                break;
            case 3:
                ar.diminuiTemperatura();
            case 4:
                ar.aumentaVelocidade();
                break;
            case 5:
                ar.diminuiVelocidade();
                break;
        }

        for( int i = 0; i < 20; i++ ) {
            std::cout << '\n';
        }

        if( opcao > 0 && opcao < 6 ) {
            ar.mostrar();
            std::cout << '\n';
        }

    } while( opcao != 6 );

    return 0;
}
