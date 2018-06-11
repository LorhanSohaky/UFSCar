#include "../../include/ScreenMenu.hpp"
#include "../../include/TextureManager.hpp"
#include <iostream>

ScreenMenu::ScreenMenu( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();
}

void ScreenMenu::loadAssets() {
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
    }

    draw();
}
