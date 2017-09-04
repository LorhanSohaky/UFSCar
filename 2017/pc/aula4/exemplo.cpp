#include <iomanip>
#include <iostream>

class Horario {
  public:
    Horario( int hora, int minuto, int segundo );
    void setHorario( int hora, int minuto, int segundo );
    void printUniversal();
    void printStandard();

  private:
    int hora, minuto, segundo;
};

Horario::Horario( int hora, int minuto, int segundo ) {
    std::cout << "Criação do Horario" << '\n';

    setHorario( hora, minuto, segundo );
}

void Horario::setHorario( int hora, int minuto, int segundo ) {
    this->hora = ( hora >= 0 && hora < 24 ) ? hora : 0;
    this->minuto = ( minuto >= 0 && minuto < 60 ) ? minuto : 0;
    this->segundo = ( segundo >= 0 && segundo < 60 ) ? segundo : 0;
}

void Horario::printUniversal() {
    std::cout << std::setfill( '0' ) << std::setw( 2 ) << hora << " " << minuto << " " << segundo
              << '\n';
}

void Horario::printStandard() {
    std::cout << ( ( hora >= 0 && hora < 12 ) ? hora : ( hora % 12 ) ) << ":" << minuto << ":"
              << segundo << " " << ( ( hora < 12 ) ? "AM" : "PM" ) << '\n';
}

int main() {
    Horario porDoSol( 10, 1, 0 );

    porDoSol.setHorario( 12, 0, 0 );

    porDoSol.printStandard();

    return 0;
}
