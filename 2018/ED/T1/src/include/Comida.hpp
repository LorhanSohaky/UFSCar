#ifndef COMIDA_HPP
#define COMIDA_HPP

#include <SFML/Graphics.hpp>
#include <iostream>

#define QUANTIDADE_COMIDAS_CERTAS 12
#define QUANTIDADE_COMIDAS_ERRADAS 4

static std::string comidas_certas[] = {"alface",
                                       "bacon",
                                       "bife",
                                       "cebola",
                                       "cogumelo",
                                       "hamburguer",
                                       "peperoni",
                                       "picles",
                                       "pimentao",
                                       "queijo",
                                       "salmao",
                                       "tomate"};

static std::string comidas_erradas[] = {"pizza", "banana", "japonesa1", "japonesa2"};

class Comida {
  public:
    Comida( const std::string nome, const bool comidaCerta );
    void setPosition( const float x, const float y );

    std::string getNome() const;
    sf::Vector2f getPosition() const;
    sf::Sprite* getSprite();

    bool isComidaCerta() const;

  private:
    std::string nome;
    sf::Sprite sprite;
    bool comidaCerta;
};

#endif
