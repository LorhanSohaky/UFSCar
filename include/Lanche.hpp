#ifndef LANCHE_HPP
#define LANCHE_HPP

#include "Food.hpp"
#include "Pilha.hpp"
#include <SFML/Graphics.hpp>

class Lanche : public sf::Drawable, public Pilha {
  public:
    Lanche( const int tamanho );

    void inserir( Food* const ingrediente );
    Food* remover();

    bool faltaApenasPaoSuperior() const;
    Food* getTopo() const;

    void setPosition( const float x, const float y );
    void move( const float x, const float y );

    void draw( sf::RenderTarget& target, sf::RenderStates states ) const;

  private:
    int tamanhoMaximo;
    Food* topo;
};

#endif