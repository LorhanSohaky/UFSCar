#include "../../include/Utils.hpp"
#include "../../include/Alface.hpp"
#include "../../include/Bacon.hpp"
#include "../../include/Banana.hpp"
#include "../../include/Bife.hpp"
#include "../../include/Cebola.hpp"
#include "../../include/Cogumelo.hpp"
#include "../../include/Hamburguer.hpp"
#include "../../include/Peixe.hpp"
#include "../../include/Peperoni.hpp"
#include "../../include/Picles.hpp"
#include "../../include/Pimentao.hpp"
#include "../../include/Pizza.hpp"
#include "../../include/Queijo.hpp"
#include "../../include/Salmao.hpp"
#include "../../include/Sushi.hpp"
#include "../../include/Tomate.hpp"

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
