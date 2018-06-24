#ifndef FILA_HPP
#define FILA_HPP

#include "Lanche.hpp"
#include <SFML/Graphics.hpp>

class Node {
  public:
    Lanche* info;
    Node* next;
    Node()
        : next( nullptr ){};
};

class Fila : public sf::Drawable {
  private:
    Node* primeiro;
    Node* ultimo;
    int cont;

  public:
    Fila();
    ~Fila();
    bool Vazia() const;
    void Insere( Lanche* info );
    Lanche* Retira();
    void Deleta();
    void draw( sf::RenderTarget& target, sf::RenderStates states ) const;
    void move( float x, float y );
};

#endif
