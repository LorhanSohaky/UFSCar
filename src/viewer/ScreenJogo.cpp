#include "../../include/ScreenJogo.hpp"
#include "../../include/MusicManager.hpp"
#include "../../include/TextureManager.hpp"

ScreenJogo::ScreenJogo( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();
}

void ScreenJogo::loadAssets() {
    TextureManager::add( "backgroundJogo", "jogo.jpg" );
    background.setTexture( TextureManager::get( "backgroundJogo" ) );

    TextureManager::add( "barraFila", "fila_barra.png" );
    bar.setTexture( TextureManager::get( "barraFila" ) );

    MusicManager::add( "musicJogar", "background.ogg" );
    music = &MusicManager::get( "musicJogar" );
}
void ScreenJogo::draw() {
    bar.setPosition(640, 30);

    window->clear();

    window->draw( background );

    window->draw( bar );

    window->display();
}
void ScreenJogo::update() {
    if( *isAudioOn && music->getStatus() != sf::SoundSource::Status::Playing ) {
        music->play();
    }

    while( window->pollEvent( *event ) ) {
        if( event->type == sf::Event::Closed ) {
            music->stop();
            window->close();
        }
    }

    draw();
}
