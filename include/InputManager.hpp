#ifndef INPUTMANAGER_HPP
#define INPUTMANAGER_HPP

#include <SFML/Graphics.hpp>
#include <vector>

class InputManager {
  private:
    sf::RenderWindow* window;
    sf::Event* event;

  public:
    InputManager( sf::Event* event, sf::RenderWindow* window );

    bool keyPressed( const sf::Event::KeyEvent key );
    bool keyPressed( const std::vector< sf::Event::KeyEvent > keys );

    bool keyReleased( const sf::Event::KeyEvent key );
    bool keyReleased( const std::vector< sf::Event::KeyEvent > keys );

    bool isSpriteClicked( const sf::Mouse::Button& button, const sf::Sprite& sprite );
};

#endif
