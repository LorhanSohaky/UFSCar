#include "../../include/Food.hpp"
#include "../../include/TextureManager.hpp"

Food::Food( const std::string alias, const std::string filePath, const bool& comidaCerta )
    : Sprite( TextureManager::add( alias, filePath, true ) ) {
    this->comidaCerta = comidaCerta;
}

void Food::draw( sf::RenderTarget& target, sf::RenderStates states ) const {
    target.draw( ( sf::Sprite ) * this, states );
}