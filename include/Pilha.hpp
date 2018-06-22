#ifndef PILHA_HPP
#define PILHA_HPP

#include "Food.hpp"
#include <SFML/Graphics.hpp>

class Pilha : public sf::Drawable {
  public:
    Pilha( const int tamanho );
    ~Pilha();

    bool isVazia() const;
    bool isCheia() const;
    int getTamanho() const;

    void empilhar( Food* elemento );
    Food* desempilhar();

  private:
    void draw( sf::RenderTarget& target, sf::RenderStates states ) const;

    int tamanho;
    int topo;

    Food** vetor;
};

#endif
