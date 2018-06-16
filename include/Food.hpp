#ifndef FOOD_HPP
#define FOOD_HPP

#include <SFML/Graphics.hpp>

class Food : sf::Drawable {
  public:
    explicit Food( const sf::Texture& texture, const bool& comidaCerta );

  protected:
    void draw( sf::RenderTarget& target, sf::RenderStates states ) const;

    bool comidaCerta;
    sf::Sprite sprite;
};

#endif
