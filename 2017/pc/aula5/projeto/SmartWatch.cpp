#include "SmartWatch.h"
#include <iostream>
#include <string>

using namespace std;

SmartWatch::SmartWatch( const string marca,
                        const string modelo,
                        const int hora,
                        const int minuto,
                        const int segundo,
                        const int batimentosCardiaco,
                        const int nivelBateria,
                        const bool receberNotificacoes ) {
    setMarca( marca );
    setModelo( modelo );
    setHora( hora );
    setMinuto( minuto );
    setSegundo( segundo );
    this->passos = 0;
    setBatimentosCardiaco( batimentosCardiaco );
    setNivelBateria( nivelBateria );
    setReceberNotificacoes( receberNotificacoes );
}

SmartWatch::~SmartWatch( void ) {
    std::cout << "Destrutor da classe" << '\n';
}

void SmartWatch::printDados( void ) const {
    std::cout << "Marca: " << getMarca() << '\n';
    std::cout << "Modelo: " << getModelo() << '\n';
    std::cout << "Horário: " << getHora() << ":" << getMinuto() << ":" << getSegundo() << '\n';
    std::cout << "Batimentos cardiacos: " << getBatimentosCardiaco() << '\n';
    std::cout << "Nivel da bateria: " << getNivelBateria() << '\n';
    std::cout << "Passos: " << getPassos() << '\n';
    std::cout << "Receber notificações:" << isReceberNotificacoes() << '\n';
}

void SmartWatch::setMarca( const string marca ) {
    this->marca = marca;
}

void SmartWatch::setModelo( const string modelo ) {
    this->modelo = modelo;
}
void SmartWatch::setHora( const int hora ) {
    if( hora >= 0 && hora < 24 ) {
        this->hora = hora;
    } else {
        this->hora = 0;
    }
}

void SmartWatch::setMinuto( const int minuto ) {
    if( minuto >= 0 && minuto < 60 ) {
        this->minuto = minuto;
    } else {
        this->minuto = 0;
    }
}

void SmartWatch::setSegundo( const int segundo ) {
    if( segundo >= 0 && segundo < 60 ) {
        this->segundo = segundo;
    } else {
        this->segundo = 0;
    }
}

void SmartWatch::setBatimentosCardiaco( const int batimentosCardiaco ) {
    this->batimentosCardiaco = batimentosCardiaco;
}

void SmartWatch::setReceberNotificacoes( const bool receberNotificacoes ) {
    this->receberNotificacoes = receberNotificacoes;
}

void SmartWatch::setNivelBateria( const int nivelBateria ) {
    if( nivelBateria >= 0 && nivelBateria <= 100 ) {
        this->nivelBateria = nivelBateria;
    } else {
        this->nivelBateria = 100;
    }
}

void SmartWatch::incrementaPassos( void ) {
    this->passos++;
}
void SmartWatch::zerarPassos( void ) {
    this->passos = 0;
}

string SmartWatch::getMarca( void ) const {
    return marca;
}

string SmartWatch::getModelo( void ) const {
    return modelo;
}
int SmartWatch::getHora( void ) const {
    return hora;
}

int SmartWatch::getMinuto( void ) const {
    return minuto;
}

int SmartWatch::getSegundo( void ) const {
    return segundo;
}

int SmartWatch::getPassos( void ) const {
    return passos;
}

int SmartWatch::getBatimentosCardiaco( void ) const {
    return batimentosCardiaco;
}

bool SmartWatch::isReceberNotificacoes( void ) const {
    return receberNotificacoes;
}

int SmartWatch::getNivelBateria( void ) const {
    return nivelBateria;
}
