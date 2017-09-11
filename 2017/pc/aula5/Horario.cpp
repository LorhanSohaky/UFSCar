#include <iomanip>
#include <iostream>

class Horario {
  public:
    Horario( int hora, int minuto, int segundo );

    void setHorario( int hora, int minuto, int segundo );
    void printUniversal();
    void printStandard();

    int getHora();
    int getMinuto();
    int getSegundo();

    void setHora( int hora );
    void setMinuto( int minuto );
    void setSegundo( int segundo );

    ~Horario();

  private:
    int hora, minuto, segundo;
};

Horario::Horario( int hora, int minuto, int segundo ) {
    std::cout << "Criação do Horario" << '\n';

    setHorario( hora, minuto, segundo );
    printUniversal();
}

Horario::~Horario() {
    std::cout << "Chamada do destrutor Horario" << '\n';
    setHorario( 0, 0, 0 );
}

void Horario::setHorario( int hora, int minuto, int segundo ) {
    setHora( hora );
    setMinuto( minuto );
    setSegundo( segundo );
}

void Horario::printUniversal() {
    std::cout << std::setfill( '0' ) << std::setw( 2 ) << hora << ":" << std::setfill( '0' )
              << std::setw( 2 ) << minuto << ":" << std::setfill( '0' ) << std::setw( 2 ) << segundo
              << '\n';
}

void Horario::printStandard() {
    std::cout << ( ( hora >= 0 && hora < 12 ) ? hora : ( hora % 12 ) ) << ":" << minuto << ":"
              << segundo << " " << ( ( hora < 12 ) ? "AM" : "PM" ) << '\n';
}

int Horario::getHora() {
    return hora;
}

int Horario::getMinuto() {
    return minuto;
}

int Horario::getSegundo() {
    return segundo;
}

void Horario::setHora( int hora ) {
    if( hora >= 0 && hora < 24 ) {
        this->hora = hora;
    } else {
        this->hora = 0;
    }
}

void Horario::setMinuto( int minuto ) {
    if( minuto >= 0 && minuto < 60 ) {
        this->minuto = minuto;
    } else {
        this->minuto = 0;
    }
}

void Horario::setSegundo( int segundo ) {
    if( segundo >= 0 && segundo < 60 ) {
        this->segundo = segundo;
    } else {
        this->segundo = 0;
    }
}

int main() {
    Horario porDoSol( 10, 1, 0 );

    porDoSol.setHorario( 12, 0, 0 );

    porDoSol.printStandard();

    return 0;
}
