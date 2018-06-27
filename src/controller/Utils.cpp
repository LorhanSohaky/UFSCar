#include "Utils.hpp"
#include "Alface.hpp"
#include "Bacon.hpp"
#include "Banana.hpp"
#include "Bife.hpp"
#include "Cebola.hpp"
#include "Cogumelo.hpp"
#include "Config.hpp"
#include "Hamburguer.hpp"
#include "Peixe.hpp"
#include "Peperoni.hpp"
#include "Picles.hpp"
#include "Pimentao.hpp"
#include "Pizza.hpp"
#include "Queijo.hpp"
#include "Salmao.hpp"
#include "Sushi.hpp"
#include "Tomate.hpp"

#include <cstdlib>
#include <ctime>
#include <iostream>

std::vector< int > Utils::itensCertos = {ALFACE,
                                         BACON,
                                         BIFE,
                                         CEBOLA,
                                         COGUMELO,
                                         HAMBURGUER,
                                         PEPERONI,
                                         PICLES,
                                         PIMENTAO,
                                         QUEIJO,
                                         SALMAO,
                                         TOMATE};

std::vector< int > Utils::itensErrados = {BANANA, PEIXE, PIZZA, SUSHI};

Food* Utils::sortearQualquerItem() {
    srand( time( NULL ) );
    int random = rand() % 2;

    if( random ) {
        return sortearItemCerto();
    } else {
        return sortearItemErrado();
    }
}

Food* Utils::sortearItemCerto() {
    static std::vector< int > itens = itensCertos;

    if( itens.empty() ) {
        itens = itensCertos;
    }

    Food* food;

    srand( time( NULL ) );
    int random = rand() % itens.size();

    switch( itens[ random ] ) {
        case ALFACE:
            food = new Alface();
            break;
        case BACON:
            food = new Bacon();
            break;
        case BIFE:
            food = new Bife();
            break;
        case CEBOLA:
            food = new Cebola();
            break;
        case COGUMELO:
            food = new Cogumelo();
            break;
        case HAMBURGUER:
            food = new Hamburguer();
            break;
        case PEPERONI:
            food = new Peperoni();
            break;
        case PICLES:
            food = new Picles();
            break;
        case PIMENTAO:
            food = new Pimentao();
            break;
        case QUEIJO:
            food = new Queijo();
            break;
        case SALMAO:
            food = new Salmao();
            break;
        case TOMATE:
            food = new Tomate();
            break;
        default:
            std::string msg = ( "Ingrediente inválido (itens certos) " + std::to_string( random ) );
            throw std::runtime_error( msg );
    }

    itens.erase( itens.begin() + random );
    return food;
}

Food* Utils::sortearItemErrado() {
    static std::vector< int > itens = itensErrados;

    if( itens.empty() ) {
        itens = itensErrados;
    }

    Food* food;

    srand( time( NULL ) );
    int random = rand() % itens.size();

    switch( itens[ random ] ) {
        case BANANA:
            food = new Banana();
            break;
        case PEIXE:
            food = new Peixe();
            break;
        case PIZZA:
            food = new Pizza();
            break;
        case SUSHI:
            food = new Sushi();
            break;
        default:
            throw std::runtime_error( "Ingrediente inválido (itens errados)" +
                                      std::to_string( random ) );
    }

    itens.erase( itens.begin() + random );
    return food;
}

bool Utils::isForaDaJanelaHorizontalmente( const Food* ingrediente ) {
    return ingrediente->getPosition().x < 0 ||
           ingrediente->getPosition().x >= ( WINDOW_WIDTH - ingrediente->getGlobalBounds().width );
}

bool Utils::isForaDaJanelaVerticalmente( const Food* ingrediente ) {
    return ingrediente->getPosition().y < 0 ||
           ( ingrediente->getPosition().y + ingrediente->getGlobalBounds().height > WINDOW_HEIGHT );
}