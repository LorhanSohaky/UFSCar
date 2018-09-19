#include "TelaResultado.hpp"

#include "MusicManager.hpp"
#include "SoundManager.hpp"
#include "TextureManager.hpp"

TelaResultado::TelaResultado( sf::RenderWindow* window, bool* isAudioOn ) {
    this->window    = window;
    this->isAudioOn = isAudioOn;
}

void TelaResultado::loadSprites() {
    if( ganhou ) {
        botaoJogarNovamente.setTexture( TextureManager::get( "botaoJogarNovamenteGanhou" ) );
        botaoJogarNovamente.setPosition( 267.5f, 470.0f );

        background.setTexture( TextureManager::get( "fundoGanhou" ) );
    } else {
        botaoJogarNovamente.setTexture( TextureManager::get( "botaoJogarNovamentePerdeu" ) );
        botaoJogarNovamente.setPosition( 70.0f, 420.0f );

        background.setTexture( TextureManager::get( "fundoPerdeu" ) );
    }
}
void TelaResultado::loadSounds() {
    if( ganhou ) {
        musica = &MusicManager::add( "ganhou", "happy_ending.ogg" );
    } else {
        musica = &MusicManager::add( "perdeu", "game_over.ogg" );
    }
    musica->setLoop( true );

    somClick.setBuffer( SoundManager::get( "choice" ) );
}

WINDOW_STATES TelaResultado::run( const bool ganhou ) {
    this->ganhou = ganhou;
    loadSprites();
    loadSounds();

    WINDOW_STATES windowState;

    sf::Time delayTime = sf::milliseconds( 200 );
    sf::Event event;

    isRunnig = true;

    if( *isAudioOn ) {
        musica->play();
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

            if( botaoJogarNovamente.getGlobalBounds().contains(
                    window->mapPixelToCoords( mousePosition ) ) ) {
                windowState = MENU;
                isRunnig    = false;
            }
        }

        window->draw( background );
        window->draw( botaoJogarNovamente );

        window->display();
        window->clear();
    }

    musica->stop();

    return windowState;
}
