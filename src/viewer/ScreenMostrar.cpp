#include "../../include/ScreenMostrar.hpp"
#include "../../include/Config.hpp"
#include "../../include/MusicManager.hpp"
#include "../../include/TextureManager.hpp"

ScreenMostrar::ScreenMostrar( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();
}

void ScreenMostrar::loadAssets() {
    TextureManager::add( "backgroundJogo", "jogo.jpg" );
    background.setTexture( TextureManager::get( "backgroundJogo" ) );

    TextureManager::add( "barraModelo", "barra_model.png" );
    barModel.setTexture( TextureManager::get( "barraModelo" ) );

    TextureManager::add( "barraJogador", "barra_player.png" );
    barPlayer.setTexture( TextureManager::get( "barraJogador" ) );

    MusicManager::add( "musicJogar", "background.ogg" );
    music = &MusicManager::get( "musicJogar" );
}
void ScreenMostrar::draw() {
    barModel.setPosition( -30, 30 );
    barPlayer.setPosition( 80, 30 );

    window->clear();

    window->draw( background );

    window->draw( barModel );

    window->draw( barPlayer );

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

    draw();
}
