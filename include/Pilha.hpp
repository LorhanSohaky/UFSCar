#ifndef PILHA_HPP
#define PILHA_HPP

#include "Food.hpp"
#include <SFML/Graphics.hpp>

class Pilha {
  public:
    bool isVazia() const;
    bool isCheia() const;
    int getTamanho() const;

  protected:
    explicit Pilha( const int tamanho );
    ~Pilha();

    void empilhar( Food* const elemento );
    Food* desempilhar();

    int tamanho;
    int topo;

    Food** vetor;
};

#endif
