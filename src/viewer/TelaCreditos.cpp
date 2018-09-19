#include "TelaCreditos.hpp"

#include "MusicManager.hpp"
#include "SoundManager.hpp"
#include "TextureManager.hpp"

#include <iostream>

TelaCreditos::TelaCreditos( sf::RenderWindow* window, bool* isAudioOn ) {
    this->window    = window;
    this->isAudioOn = isAudioOn;
}

void TelaCreditos::loadSprites() {
    background.setTexture( TextureManager::get( "fundoCreditos" ) );
}
void TelaCreditos::loadSounds() {
    musica = &MusicManager::add( "ganhou", "happy_ending.ogg" );
    musica->setLoop( true );
}

void TelaCreditos::loadFonts() {
    if( !SG.loadFromFile( "../resources/fonts/SHOWG.TTF" ) ) {
        return;
    }
    text.setFont( SG );
    text.setCharacterSize( 50 );

    text.setFillColor( sf::Color::White );
    text.setOutlineColor( sf::Color::Black );
    text.setOutlineThickness( 3 );
}

WINDOW_STATES TelaCreditos::run() {
    loadSprites();
    loadSounds();
    loadFonts();

    WINDOW_STATES windowState;

    sf::Event event;

    isRunnig = true;

    sf::String string(
        "Fernanda Ferreira \n\t Lorhan Sohaky \n\t Nicolas Prates \n  Sabrina Miranda "
        "\n\n\nUFScar Sao Carlos\n\n\t\t\t\t\t2018" );

    text.setString( string.toUtf32() );
    text.setPosition( 165, 600 );

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

        text.move( 0, -1.0f );

        window->clear();
        window->draw( background );
        window->draw( text );

        window->display();

        if( text.getPosition().y < -700 ) {
            text.move( 0, 0.0f );
            windowState = MENU;
            isRunnig    = false;
        }
    }

    musica->stop();

    return windowState;
}
