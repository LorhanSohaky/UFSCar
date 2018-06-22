#include "../../include/ScreenPerdeu.hpp"
#include "../../include/Config.hpp"
#include "../../include/MusicManager.hpp"
#include "../../include/SoundManager.hpp"
#include "../../include/TextureManager.hpp"

ScreenPerdeu::ScreenPerdeu( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();

    menuButton.setPosition( 0, WINDOW_HEIGHT - menuButton.getGlobalBounds().height );
}

void ScreenPerdeu::loadAssets() {
    TextureManager::add( "backgroundPerdeu", "gameover.png" );
    background.setTexture( TextureManager::get( "backgroundPerdeu" ) );

    TextureManager::add( "btnPerdeu", "fracassou_btn.png" );
    menuButton.setTexture( TextureManager::get( "btnPerdeu" ) );

    MusicManager::add( "gameOver", "game_over.ogg" );
    music = &MusicManager::get( "gameOver" );
}
void ScreenPerdeu::draw() {
    window->clear();

    window->draw( background );
    window->draw( menuButton );

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

        if( inputManager->isSpriteClicked( sf::Mouse::Button::Left, menuButton ) ) {
            // TODO: Adicionar áudio do botão
            music->stop();
            *nextScreen = MENU;
        }
    }

    draw();
}
