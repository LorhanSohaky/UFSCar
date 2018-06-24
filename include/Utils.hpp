#ifndef UTILS_HPP
#define UTILS_HPP

#include "Food.hpp"
#include <vector>

class Utils {
  public:
    static Food* sortearItemCerto();
    static Food* sortearQualquerItem();

    static bool isForaDaJanelaHorizontalmente( const Food* ingrediente );
    static bool isForaDaJanelaVerticalmente( const Food* ingrediente );

  private:
    static Food* sortearItemErrado();

    static std::vector< int > itensCertos;

    static std::vector< int > itensErrados;

    enum ITENS_CERTOS {
        ALFACE,
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
        TOMATE
    };

    enum ITENS_ERRADOS { BANANA, PEIXE, PIZZA, SUSHI };
};

#endif
