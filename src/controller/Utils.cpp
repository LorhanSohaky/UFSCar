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

    srand( time( NULL ) );
    int random = rand() % itens.size();

    switch( random ) {
        case ALFACE:
            return new Alface();
            break;
        case BACON:
            return new Bacon();
            break;
        case BIFE:
            return new Bife();
            break;
        case CEBOLA:
            return new Cebola();
            break;
        case COGUMELO:
            return new Cogumelo();
            break;
        case HAMBURGUER:
            return new Hamburguer();
            break;
        case PEPERONI:
            return new Peperoni();
            break;
        case PICLES:
            return new Picles();
            break;
        case PIMENTAO:
            return new Pimentao();
            break;
        case QUEIJO:
            return new Queijo();
            break;
        case SALMAO:
            return new Salmao();
            break;
        case TOMATE:
            return new Tomate();
            break;
        default:
            std::string msg = ( "Ingrediente inválido (itens certos) " + std::to_string( random ) );
            throw std::runtime_error( msg );
    }
}

Food* Utils::sortearItemErrado() {
    static std::vector< int > itens = itensErrados;

    if( itens.empty() ) {
        itens = itensErrados;
    }

    srand( time( NULL ) );
    int random = rand() % itens.size();

    switch( random ) {
        case BANANA:
            return new Banana();
            break;
        case PEIXE:
            return new Peixe();
            break;
        case PIZZA:
            return new Pizza();
            break;
        case SUSHI:
            return new Sushi();
            break;
        default:
            throw std::runtime_error( "Ingrediente inválido (itens errados)" +
                                      std::to_string( random ) );
    }
}
