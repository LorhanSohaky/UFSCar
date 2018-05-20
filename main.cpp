#include "include/Config.hpp"
#include "include/InputManager.hpp"
#include "include/ScreenMenu.hpp"
#include "include/TextureManager.hpp"
#include "include/Utils.hpp"
#include <SFML/Graphics.hpp>
#include <iostream>

int main() {
    GameRef gameRef = std::make_shared< GameData >();

    sf::RenderWindow app( sf::VideoMode( WINDOW_WIDTH, WINDOW_HEIGHT ), TITLE );
    gameRef->window = &app;

    TextureManager::add( "img", "cb.bmp" );

    ScreenMenu menu( gameRef );

    while( gameRef->window->isOpen() ) {
        menu.update();
    }

    return EXIT_SUCCESS;
}
