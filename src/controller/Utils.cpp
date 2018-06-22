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
            throw std::runtime_error( "Ingrediente inválido" );
    }
}