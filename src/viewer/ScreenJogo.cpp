#include "../../include/ScreenJogo.hpp"
#include "../../include/Config.hpp"
#include "../../include/MusicManager.hpp"
#include "../../include/TextureManager.hpp"
#include "../../include/Utils.hpp"

#define VELOCIDADE_QUEDA 30
#define VELOCIDADE_HORIZONTAL 7

ScreenJogo::ScreenJogo( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();

    caindo               = false;
    movendoHorizontal    = true;
    velocidadeHorizontal = VELOCIDADE_HORIZONTAL;
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
    window->draw( bar );
    window->draw( *ingrediente );

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
            movendoHorizontal = false;
            caindo            = true;
        }
    }

    if( movendoHorizontal ) {
        if( ( ingrediente->getPosition().x ) < 0 ||
            ( ingrediente->getPosition().x ) >=
                ( WINDOW_WIDTH - ingrediente->getGlobalBounds().width ) ) {
            velocidadeHorizontal = -1 * velocidadeHorizontal;
        }
        ingrediente->move( velocidadeHorizontal, 0 );

    } else if( caindo ) {
        if( ingrediente->getPosition().y + ingrediente->getGlobalBounds().height > WINDOW_HEIGHT ) {
            caindo = false;
        } else {
            ingrediente->move( 0, VELOCIDADE_QUEDA );
        }
    } else {
        delete ingrediente;
        ingrediente = Utils::sortearQualquerItem();
        ingrediente->setPosition( WINDOW_WIDTH / 2 - ingrediente->getGlobalBounds().width / 2, 0 );
        movendoHorizontal = true;
    }

    draw();
}
