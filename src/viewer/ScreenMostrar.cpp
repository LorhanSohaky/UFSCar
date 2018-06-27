#include "ScreenMostrar.hpp"
#include "Config.hpp"
#include "Lanche.hpp"
#include "MusicManager.hpp"
#include "TextureManager.hpp"
#include "Utils.hpp"

ScreenMostrar::ScreenMostrar( GameRef& gameRef, Fila* fila )
    : Screen( gameRef ) {
    this->fila = fila;
    loadAssets();
}

void ScreenMostrar::loadAssets() {
    TextureManager::add( "backgroundJogo", "jogo.jpg" );
    background.setTexture( TextureManager::get( "backgroundJogo" ) );

    MusicManager::add( "musicJogar", "background.ogg" );
    music = &MusicManager::get( "musicJogar" );
    music->setLoop( true );
}
void ScreenMostrar::draw() {
    window->clear();

    window->draw( background );
    window->draw( *fila );

    window->display();
}
void ScreenMostrar::update() {
    if( *isAudioOn && music->getStatus() != sf::SoundSource::Status::Playing ) {
        music->play();
    }

    while( window->pollEvent( *event ) ) {
        if( event->type == sf::Event::Closed ) {
            music->stop();
            window->close();
        }
    }

    if( fila->getPositionX() > -WINDOW_WIDTH ) {
        fila->move( -5, 0 );
    } else {
        music->stop();
        *nextScreen = JOGAR;
    }

    draw();
}
