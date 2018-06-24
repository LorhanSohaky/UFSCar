#include "../../include/Food.hpp"
#include "../../include/TextureManager.hpp"

Food::Food( const std::string alias, const std::string filePath, const bool& comidaCerta )
    : Sprite( TextureManager::add( alias, filePath, true ) ) {
    this->alias       = alias;
    this->comidaCerta = comidaCerta;
}

bool Food::getComidaCerta() const {
    return comidaCerta;
}

std::string Food::getAlias() const {
    return alias;
}

void Food::draw( sf::RenderTarget& target, sf::RenderStates states ) const {
    target.draw( ( sf::Sprite ) * this, states );
}