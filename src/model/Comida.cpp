#include "Comida.hpp"
#include "TextureManager.hpp"

Comida::Comida( const std::string nome, const bool comidaCerta )
    : sprite( TextureManager::get( nome ) ) {
    this->nome        = nome;
    this->comidaCerta = comidaCerta;
}

std::string Comida::getNome() const {
    return this->nome;
}

void Comida::setPosition( const float x, const float y ) {
    this->sprite.setPosition( x, y );
}

sf::Vector2f Comida::getPosition() const {
    return this->sprite.getPosition();
}

sf::Sprite* Comida::getSprite() {
    return &sprite;
}

bool Comida::isComidaCerta() const {
    return comidaCerta;
}
