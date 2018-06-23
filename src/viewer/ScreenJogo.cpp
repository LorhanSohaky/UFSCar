#include "../../include/ScreenJogo.hpp"
#include "../../include/Config.hpp"
#include "../../include/MusicManager.hpp"
#include "../../include/TextureManager.hpp"
#include "../../include/Utils.hpp"

#define VELOCIDADE_QUEDA 30

ScreenJogo::ScreenJogo( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();

    caindo = false;
}

ScreenJogo::~ScreenJogo() {
    delete ingrediente;
}

void ScreenJogo::loadAssets() {
    TextureManager::add( "backgroundJogo", "jogo.jpg" );
    background.setTexture( TextureManager::get( "backgroundJogo" ) );

    TextureManager::add( "barraFila", "fila_barra.png" );
    bar.setTexture( TextureManager::get( "barraFila" ) );
    bar.setPosition( 640, 30 );

    MusicManager::add( "musicJogar", "background.ogg" );
    music = &MusicManager::get( "musicJogar" );

    ingrediente = Utils::sortearQualquerItem();
    ingrediente->setPosition( WINDOW_WIDTH / 2 - ingrediente->getGlobalBounds().width / 2, 0 );
}
void ScreenJogo::draw() {
    window->clear();

    window->draw( background );
    window->draw( *ingrediente );

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

        if( inputManager->keyPressed( sf::Keyboard::Space ) ) {
            caindo = true;
        }
    }

    if( caindo ) {
        ingrediente->move( 0, VELOCIDADE_QUEDA );
    }

    draw();
}
