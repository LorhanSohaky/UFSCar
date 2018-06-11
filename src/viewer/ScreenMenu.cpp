#include "../../include/ScreenMenu.hpp"
#include "../../include/Config.hpp"
#include "../../include/TextureManager.hpp"
#include <iostream>

ScreenMenu::ScreenMenu( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();

    playButton.setPosition( WINDOW_WIDTH - playButton.getGlobalBounds().width,
                            ( WINDOW_HEIGHT - playButton.getGlobalBounds().height ) / 2 );
}

void ScreenMenu::loadAssets() {
    TextureManager::add( "backgroundMenu", "menu.jpg" );
    background.setTexture( TextureManager::get( "backgroundMenu" ) );

    TextureManager::add( "playButton", "play.png", true );
    playButton.setTexture( TextureManager::get( "playButton" ) );
}
void ScreenMenu::draw() {
    window->clear();

    window->draw( background );
    window->draw( playButton );

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
