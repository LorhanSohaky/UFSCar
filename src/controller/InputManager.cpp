#include "InputManager.hpp"
#include "Collision.hpp"

InputManager::InputManager( sf::Event* event, sf::RenderWindow* window ) {
    this->event  = event;
    this->window = window;
}

bool InputManager::keyPressed( const sf::Keyboard::Key& key ) {
    return event->type == sf::Event::KeyPressed && sf::Keyboard::isKeyPressed( key );
}

bool InputManager::keyPressed( const std::vector< sf::Keyboard::Key >& keys ) {
    for( sf::Keyboard::Key key : keys ) {
        if( keyPressed( key ) ) {
            return true;
        }
    }

    return false;
}

bool InputManager::keyReleased( const sf::Keyboard::Key& key ) {
    return event->type == sf::Event::KeyReleased && !sf::Keyboard::isKeyPressed( key );
}

bool InputManager::keyReleased( const std::vector< sf::Keyboard::Key >& keys ) {
    for( sf::Keyboard::Key key : keys ) {
        if( keyReleased( key ) ) {
            return true;
        }
    }

    return false;
}

bool InputManager::isSpriteClicked( const sf::Mouse::Button& button, const sf::Sprite& sprite ) {
    if( sf::Mouse::isButtonPressed( button ) ) {
        sf::Vector2< float > vector( sf::Mouse::getPosition( *window ) );

        return Collision::VectorPerfectTest( sprite, vector );
    }

    return false;
}

bool InputManager::isMouseOver( const sf::Sprite& sprite ) {
    sf::Vector2< float > vector( sf::Mouse::getPosition( *window ) );
    return Collision::VectorPerfectTest( sprite, vector );
}
