#ifndef UTILS_HPP
#define UTILS_HPP

#include "Food.hpp"
#include <vector>

class Utils {
  private:
    static std::vector< int > itensCertos;

    static std::vector< int > itensErrados;

    enum ITENS_CERTOS {
        ALFACE = 0,
        BACON,
        BIFE,
        CEBOLA,
        COGUMELO,
        HAMBURGUER,
        PAO_INFERIOR,
        PAO_SUPERIOR,
        PEPERONI,
        PICLES,
        PIMENTAO,
        QUEIJO,
        SALMAO,
        TOMATE
    };

    enum ITENS_ERRADOS { BANANA = 0, PEIXE, PIZZA, SUSHI };

  public:
    static Food* sortearItemCerto();
};

#endif
