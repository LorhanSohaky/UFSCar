#include "../../include/Food.hpp"

Food::Food( const sf::Texture& texture, const bool& comidaCorreta )
    : Sprite( texture ) {
    this->comidaCorreta = comidaCorreta;
}
