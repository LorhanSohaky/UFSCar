#ifndef FOOD_HPP
#define FOOD_HPP

#include <SFML/Graphics.hpp>

class Food : public sf::Sprite {
  public:
    explicit Food( const std::string alias, const std::string filePath, const bool& comidaCerta );

  protected:
    void draw( sf::RenderTarget& target, sf::RenderStates states ) const;

    bool comidaCerta;
    sf::Sprite sprite;
};

#endif
