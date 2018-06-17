#include "../../include/ScreenGanhou.hpp"
#include "../../include/Config.hpp"
#include "../../include/MusicManager.hpp"
#include "../../include/SoundManager.hpp"
#include "../../include/TextureManager.hpp"

ScreenGanhou::ScreenGanhou( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();

    menuButton.setPosition( WINDOW_WIDTH - ( menuButton.getGlobalBounds().width + 10 ),
                            WINDOW_HEIGHT - menuButton.getGlobalBounds().height );
}

void ScreenGanhou::loadAssets() {
    TextureManager::add( "backgroundGanhou", "gamewin.png" );
    background.setTexture( TextureManager::get( "backgroundGanhou" ) );

    TextureManager::add( "btnGanhou", "ganhou_btn.png" );
    menuButton.setTexture( TextureManager::get( "btnGanhou" ) );

    MusicManager::add( "gameWin", "happy_ending.ogg" );
    music = &MusicManager::get( "gameWin" );
}
void ScreenGanhou::draw() {
    window->clear();

    window->draw( background );
    window->draw( menuButton );

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

        if( inputManager->isSpriteClicked( sf::Mouse::Button::Left, menuButton ) ) {
            // TODO: Adicionar áudio do botão
            music->stop();
            *nextScreen = MENU;
        }
    }

    draw();
}
