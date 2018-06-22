#ifndef LANCHE_HPP
#define LANCHE_HPP

#include "Food.hpp"
#include "Pilha.hpp"
#include <SFML/Graphics.hpp>

class Lanche : public Pilha {
  public:
    Lanche( const int tamanho );

    bool isCompleto() const;
    bool faltaApenasPaoSuperior() const;

  private:
    int tamanhoMaximo;
};

#endif