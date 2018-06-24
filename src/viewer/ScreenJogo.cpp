#include "../../include/ScreenJogo.hpp"
#include "../../include/Config.hpp"
#include "../../include/MusicManager.hpp"
#include "../../include/PaoInferior.hpp"
#include "../../include/PaoSuperior.hpp"
#include "../../include/TextureManager.hpp"
#include "../../include/Utils.hpp"

#define VELOCIDADE_QUEDA 30
#define VELOCIDADE_HORIZONTAL 7

void setPosicaoInicial( Food* ingrediente );

ScreenJogo::ScreenJogo( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();
    caindo               = false;
    movendoHorizontal    = true;
    velocidadeHorizontal = VELOCIDADE_HORIZONTAL;

    // TODO: Mudar para receber a lista de lanches
    meu    = new Lanche( 4 );
    modelo = new Lanche( 4 );

    meu->empilhar( new PaoInferior() );
    meu->setPosition( WINDOW_WIDTH / 2 - 50, WINDOW_HEIGHT - 85 );

    modelo->empilhar( new PaoInferior() );

    while( !modelo->faltaApenasPaoSuperior() ) {
        modelo->empilhar( Utils::sortearItemCerto() );
    }

    modelo->empilhar( new PaoSuperior() );
    modelo->setPosition( 0, WINDOW_HEIGHT - 85 );
}

ScreenJogo::~ScreenJogo() {
    delete ingrediente;
    delete meu;
    delete modelo;
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
    window->draw( *modelo );
    window->draw( *meu );
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

    movimentar();

    if( caindo && Collision::PixelPerfectTest( *ingrediente, *meu->getTopo() ) ) {
        if( !ingrediente->getComidaCerta() ) {
            movendoHorizontal = true;
            caindo            = false;
            delete ingrediente;
            ingrediente = Utils::sortearQualquerItem();
            setPosicaoInicial( ingrediente );

            music->stop();
            *nextScreen = PERDEU;
        }
    }

    draw();
}

void ScreenJogo::movimentar() {
    if( movendoHorizontal ) {
        if( Utils::isForaDaJanelaHorizontalmente( ingrediente ) ) {
            velocidadeHorizontal = -1 * velocidadeHorizontal;
        }
        ingrediente->move( velocidadeHorizontal, 0 );

    } else if( caindo ) {
        if( Utils::isForaDaJanelaVerticalmente( ingrediente ) ) {
            caindo = false;
        } else {
            ingrediente->move( 0, VELOCIDADE_QUEDA );
        }
    } else {
        delete ingrediente;
        ingrediente = Utils::sortearQualquerItem();
        setPosicaoInicial( ingrediente );
        movendoHorizontal = true;
    }
}

void setPosicaoInicial( Food* ingrediente ) {
    ingrediente->setPosition( WINDOW_WIDTH / 2 - ingrediente->getGlobalBounds().width / 2, 0 );
}
