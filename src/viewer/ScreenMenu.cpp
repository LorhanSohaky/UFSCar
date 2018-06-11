#include "../../include/ScreenMenu.hpp"
#include "../../include/TextureManager.hpp"
#include <iostream>

ScreenMenu::ScreenMenu( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();
}

void ScreenMenu::loadAssets() {
    TextureManager::add( "backgroundMenu", "menu.jpg" );

    background.setTexture( TextureManager::get( "backgroundMenu" ) );
}
void ScreenMenu::draw() {
    window->clear();
    window->draw( background );
    window->display();
}
void ScreenMenu::update() {
    while( window->pollEvent( *event ) ) {
        if( event->type == sf::Event::Closed ) {
            window->close();
        }
    }

    draw();
}
