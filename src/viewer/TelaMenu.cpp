#include "TelaMenu.hpp"

#include "MusicManager.hpp"
#include "SoundManager.hpp"
#include "TextureManager.hpp"

TelaMenu::TelaMenu( sf::RenderWindow* window, bool* isAudioOn ) {
    this->window    = window;
    this->isAudioOn = isAudioOn;
}

void TelaMenu::loadSprites() {
    background.setTexture( TextureManager::get( "fundoMenu" ) );
    botaoJogar.setTexture( TextureManager::get( "botaoPlay" ) );
    botaoCreditos.setTexture( TextureManager::get( "botaoCreditos" ) );
    botaoAudio.setTexture( TextureManager::get( "audioOn" ) );
}
void TelaMenu::loadSounds() {
    musica = &MusicManager::add( "menu", "menu.ogg" );
    musica->setLoop( true );

    somClick.setBuffer( SoundManager::get( "choice" ) );
}

WINDOW_STATES TelaMenu::run() {
    loadSprites();
    loadSounds();

    WINDOW_STATES windowState;

    sf::Time delayTime = sf::milliseconds( 200 );
    sf::Event event;

    isRunnig = true;

    botaoAudio.setScale( sf::Vector2f( 0.25, 0.25 ) );

    botaoJogar.setPosition( 510.0f, 250.0f );
    botaoCreditos.setPosition( 510.0f, 325.0f );
    botaoAudio.setPosition( 750.0f, 550.0f );

    if( *isAudioOn ) {
        musica->play();
    } else {
        botaoAudio.setTexture( TextureManager::get( "audioOff" ) );
    }

    while( isRunnig ) {
        while( window->pollEvent( event ) ) {
            if( event.type == sf::Event::Closed ) {
                windowState = FECHAR;
                isRunnig    = false;
            }
        }

        if( sf::Mouse::isButtonPressed( sf::Mouse::Left ) ) {
            if( *isAudioOn ) {
                somClick.play();
                sf::sleep( delayTime );
            }

            sf::Vector2i mousePosition = sf::Mouse::getPosition( *window );
            if( botaoJogar.getGlobalBounds().contains(
                    window->mapPixelToCoords( mousePosition ) ) ) {
                windowState = JOGAR;
                isRunnig    = false;
            }
            if( botaoCreditos.getGlobalBounds().contains(
                    window->mapPixelToCoords( mousePosition ) ) ) {
                windowState = CREDITOS;
                isRunnig    = false;
            }
            if( botaoAudio.getGlobalBounds().contains(
                    window->mapPixelToCoords( mousePosition ) ) ) {
                if( *isAudioOn ) {
                    musica->pause();
                    sf::sleep( delayTime );
                    botaoAudio.setTexture( TextureManager::get( "audioOff" ) );
                    *isAudioOn = false;
                } else {
                    musica->play();
                    sf::sleep( delayTime );
                    botaoAudio.setTexture( TextureManager::get( "audioOn" ) );
                    *isAudioOn = true;
                }
            }
        }

        window->draw( background );
        window->draw( botaoAudio );
        window->draw( botaoJogar );
        window->draw( botaoCreditos );

        window->display();
        window->clear();
    }

    musica->stop();

    return windowState;
}
