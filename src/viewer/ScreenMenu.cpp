#include "../../include/ScreenMenu.hpp"
#include "../../include/TextureManager.hpp"
#include <iostream>

ScreenMenu::ScreenMenu( GameRef gameRef )
    : Screen( gameRef ) {
    loadAssets();
}

void ScreenMenu::loadAssets() {
    TextureManager::add( "img", "cb.bmp" );

    sprite.setTexture( TextureManager::get( "img" ) );
}
void ScreenMenu::draw() {
    window->clear();
    window->draw( sprite );
    window->display();
}
void ScreenMenu::update() {
    while( window->pollEvent( *event ) ) {
        if( event->type == sf::Event::Closed ) {
            window->close();
        }

        if( inputManager->isSpriteClicked( sf::Mouse::Button::Left, sprite ) ) {
            std::cout << "Ola" << '\n';
        } else if( inputManager->isSpriteClicked( sf::Mouse::Button::Right, sprite ) ) {
            std::cout << "Bye" << '\n';
        }
    }
    draw();
}
