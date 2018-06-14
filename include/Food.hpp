#ifndef FOOD_HPP
#define FOOD_HPP

#include <SFML/Graphics.hpp>

class Food : sf::Sprite {
  public:
    explicit Food( const sf::Texture& texture, const bool& comidaCorreta );

  private:
    bool comidaCorreta;
};

#endif
