#include "../../include/ScreenMenu.hpp"
#include "../../include/Config.hpp"
#include "../../include/TextureManager.hpp"
#include <iostream>

ScreenMenu::ScreenMenu( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();

    playButton.setPosition( WINDOW_WIDTH - playButton.getGlobalBounds().width,
                            ( WINDOW_HEIGHT - playButton.getGlobalBounds().height ) / 2 - 30 );

    creditsButton.setPosition( WINDOW_WIDTH - creditsButton.getGlobalBounds().width,
                               playButton.getGlobalBounds().top +
                                   playButton.getGlobalBounds().height );
}

void ScreenMenu::loadAssets() {
    TextureManager::add( "backgroundMenu", "menu.jpg" );
    background.setTexture( TextureManager::get( "backgroundMenu" ) );

    TextureManager::add( "playButton", "play.png", true );
    playButton.setTexture( TextureManager::get( "playButton" ) );

    TextureManager::add( "creditsButton", "credits.png", true );
    creditsButton.setTexture( TextureManager::get( "creditsButton" ) );
}
void ScreenMenu::draw() {
    window->clear();

    window->draw( background );
    window->draw( playButton );
    window->draw( creditsButton );

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
