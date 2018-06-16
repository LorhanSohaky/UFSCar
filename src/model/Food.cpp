#include "../../include/Food.hpp"
#include "../../include/TextureManager.hpp"

Food::Food( const sf::Texture& texture, const bool& comidaCerta )
    : Sprite( texture ) {
    this->comidaCerta = comidaCerta;
}

void Food::draw( sf::RenderTarget& target, sf::RenderStates states ) const {
    target.draw( ( sf::Sprite ) * this, states );
}