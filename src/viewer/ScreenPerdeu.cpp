#include "ScreenPerdeu.hpp"
#include "Config.hpp"
#include "MusicManager.hpp"
#include "SoundManager.hpp"
#include "TextureManager.hpp"

ScreenPerdeu::ScreenPerdeu( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();
}

void ScreenPerdeu::loadAssets() {
    TextureManager::add( "backgroundPerdeu", "gameover.png" );
    background.setTexture( TextureManager::get( "backgroundPerdeu" ) );

    MusicManager::add( "gameOver", "game_over.ogg" );
    music = &MusicManager::get( "gameOver" );
}
void ScreenPerdeu::draw() {
    window->clear();

    window->draw( background );

    window->display();
}
void ScreenPerdeu::update() {
    if( *isAudioOn && music->getStatus() != sf::SoundSource::Status::Playing ) {
        music->play();
    }
    while( window->pollEvent( *event ) ) {
        if( event->type == sf::Event::Closed ) {
            window->close();
        }
    }

    draw();
}
