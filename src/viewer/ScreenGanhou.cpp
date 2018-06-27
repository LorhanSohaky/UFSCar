#include "ScreenGanhou.hpp"
#include "Config.hpp"
#include "MusicManager.hpp"
#include "SoundManager.hpp"
#include "TextureManager.hpp"

ScreenGanhou::ScreenGanhou( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();
}

void ScreenGanhou::loadAssets() {
    TextureManager::add( "backgroundGanhou", "gamewin.png" );
    background.setTexture( TextureManager::get( "backgroundGanhou" ) );

    MusicManager::add( "gameWin", "happy_ending.ogg" );
    music = &MusicManager::get( "gameWin" );
}
void ScreenGanhou::draw() {
    window->clear();

    window->draw( background );

    window->display();
}
void ScreenGanhou::update() {
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
