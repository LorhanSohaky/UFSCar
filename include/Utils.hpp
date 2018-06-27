#ifndef UTILS_HPP
#define UTILS_HPP

#include "Fila.hpp"
#include "Food.hpp"
#include "Lanche.hpp"
#include <vector>

class Utils {
  public:
    static Food* sortearItemCerto();
    static Food* sortearQualquerItem();
    static Lanche* criarLancheAleatorio( const int tamanho );

    static bool isForaDaJanelaHorizontalmente( const Food* ingrediente );
    static bool isForaDaJanelaVerticalmente( const Food* ingrediente );

    static void limparFila( Fila* fila );

  private:
    static std::vector< int > itensCertos;

    static std::vector< int > itensErrados;

    enum ITENS_ERRADOS { BANANA, PEIXE, PIZZA, SUSHI };

    enum ITENS_CERTOS {
        ALFACE = 4, // 4 por ser a quantidade de itens errados
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
};

#endif
