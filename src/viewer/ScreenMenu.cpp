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

    audioButton.setScale( sf::Vector2f( 0.25, 0.25 ) );
    audioButton.setPosition( WINDOW_WIDTH - ( audioButton.getGlobalBounds().width + 10 ),
                             WINDOW_HEIGHT - ( audioButton.getGlobalBounds().height + 10 ) );
}

void ScreenMenu::loadAssets() {
    TextureManager::add( "backgroundMenu", "menu.jpg" );
    background.setTexture( TextureManager::get( "backgroundMenu" ) );

    TextureManager::add( "playButton", "play.png", true );
    playButton.setTexture( TextureManager::get( "playButton" ) );

    TextureManager::add( "creditsButton", "credits.png", true );
    creditsButton.setTexture( TextureManager::get( "creditsButton" ) );

    TextureManager::add( "audioButtonOn", "audio_on.png", true );
    TextureManager::add( "audioButtonOff", "audio_off.png", true );
    audioButton.setTexture( TextureManager::get( "audioButtonOn" ) );
}
void ScreenMenu::draw() {
    window->clear();

    window->draw( background );
    window->draw( playButton );
    window->draw( creditsButton );
    window->draw( audioButton );

    window->display();
}
void ScreenMenu::update() {
    if( !*isAudioOn ) {
        audioButton.setTexture( TextureManager::get( "audioButtonOff" ) );
    }

    while( window->pollEvent( *event ) ) {
        if( event->type == sf::Event::Closed ) {
            window->close();
        }

        if( inputManager->isSpriteClicked( sf::Mouse::Button::Left, audioButton ) ) {
            if( *isAudioOn ) {
                audioButton.setTexture( TextureManager::get( "audioButtonOff" ) );
                *isAudioOn = false;
            } else {
                audioButton.setTexture( TextureManager::get( "audioButtonOn" ) );
                *isAudioOn = true;
            }
        }
    }

    draw();
}