#ifndef FOOD_HPP
#define FOOD_HPP

#include <SFML/Graphics.hpp>

class Food : public sf::Sprite {
  public:
    explicit Food( const std::string& alias, const std::string filePath, const bool& comidaCerta );

    bool getComidaCerta() const;
    std::string getAlias() const;

  protected:
    void draw( sf::RenderTarget& target, sf::RenderStates states ) const;

    bool comidaCerta;
    std::string alias;
    sf::Sprite sprite;
};

#endif
