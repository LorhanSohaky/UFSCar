#include "../../include/Food.hpp"
#include "../../include/TextureManager.hpp"

Food::Food( const sf::Texture& texture, const bool& comidaCerta ) {
    sprite.setTexture( texture );
    this->comidaCerta = comidaCerta;
}

void Food::draw( sf::RenderTarget& target, sf::RenderStates states ) const {
    target.draw( sprite, states );
}