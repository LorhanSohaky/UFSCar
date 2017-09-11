#include "SmartWatch.h"

SmartWatch::SmartWatch( String marca,
                        String modelo,
                        int hora,
                        int minuto,
                        int segundo,
                        int batimentosCardiaco,
                        int nivelBateria,
                        bool receberNotificacoes ) {
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

void SmartWatch::setMarca( const String marca ) {
    this->marca = marca;
}

void SmartWatch::setModelo( const String modelo ) {
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

String SmartWatch::getMarca( void ) {
    return marca;
}

String SmartWatch::getModelo( void ) {
    return modelo;
}
int SmartWatch::getHora( void ) {
    return hora;
}

int SmartWatch::getMinuto( void ) {
    return minuto;
}

int SmartWatch::getSegundo( void ) {
    return segundo;
}

int SmartWatch::getPassos( void ) {
    return passos;
}

int SmartWatch::getBatimentosCardiaco( void ) {
    return batimentosCardiaco;
}

bool SmartWatch::isReceberNotificacoes( void ) {
    return receberNotificacoes;
}

int SmartWatch::getNivelBateria( void ) {
    return nivelBateria;
}
