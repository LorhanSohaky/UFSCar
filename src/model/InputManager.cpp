#include "../../include/InputManager.hpp"

InputManager::InputManager( sf::Event* event, sf::RenderWindow* window ) {
    this->event  = event;
    this->window = window;
}

bool InputManager::keyPressed( const sf::Event::KeyEvent key ) {
    return event->type == sf::Event::KeyPressed && event->key.code == key.code;
}

bool InputManager::keyPressed( const std::vector< sf::Event::KeyEvent > keys ) {
    for( sf::Event::KeyEvent key : keys ) {
        if( keyPressed( key ) ) {
            return true;
        }
    }

    return false;
}

bool InputManager::keyReleased( const sf::Event::KeyEvent key ) {
    return event->type == sf::Event::KeyReleased && event->key.code == key.code;
}

bool InputManager::keyReleased( const std::vector< sf::Event::KeyEvent > keys ) {
    for( sf::Event::KeyEvent key : keys ) {
        if( keyReleased( key ) ) {
            return true;
        }
    }

    return false;
}

bool InputManager::isSpriteClicked( const sf::Mouse::Button& button, const sf::Sprite& sprite ) {
    if( sf::Mouse::isButtonPressed( button ) ) {
        if( sprite.getGlobalBounds().contains(
                sf::Vector2< float >( sf::Mouse::getPosition( *window ) ) ) ) {
            return true;
        }
    }

    return false;
}
