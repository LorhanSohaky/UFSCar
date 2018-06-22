#include "../../include/ScreenMenu.hpp"
#include "../../include/Config.hpp"
#include "../../include/MusicManager.hpp"
#include "../../include/SoundManager.hpp"
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

    music = &MusicManager::add( "musicMenu", "menu.ogg" );
    music->setLoop( true );

    SoundManager::add( "clickSound", "choice.ogg" );
    clickSound.setBuffer( SoundManager::get( "clickSound" ) );
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
    if( *isAudioOn && music->getStatus() != sf::SoundSource::Status::Playing ) {
        music->play();
    }

    if( !*isAudioOn ) {
        audioButton.setTexture( TextureManager::get( "audioButtonOff" ) );

    } else {
        audioButton.setTexture( TextureManager::get( "audioButtonOn" ) );
    }

    while( window->pollEvent( *event ) ) {
        if( event->type == sf::Event::Closed ) {
            music->stop();
            window->close();
        }

        // TODO: Mudar o cursor quando o mouse estiver em cima de um botão (C++)
        if( inputManager->isSpriteClicked( sf::Mouse::Button::Left, audioButton ) ) {
            if( *isAudioOn ) {
                clickSound.play();
                music->pause();
            }
            *isAudioOn = !*isAudioOn;
        }

        if( inputManager->isSpriteClicked( sf::Mouse::Button::Left, playButton ) ) {
            if( *isAudioOn ) {
                clickSound.play();
            }
            music->stop();
            *nextScreen = JOGAR;
        }

        if( inputManager->isSpriteClicked( sf::Mouse::Button::Left, creditsButton ) ) {
            if( *isAudioOn ) {
                clickSound.play();
            }
            music->stop();
            *nextScreen = CREDITOS;
        }
    }

    draw();
}