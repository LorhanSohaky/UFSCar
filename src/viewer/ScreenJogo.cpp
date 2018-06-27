#include "ScreenJogo.hpp"
#include "Config.hpp"
#include "MusicManager.hpp"
#include "PaoInferior.hpp"
#include "PaoSuperior.hpp"
#include "TextureManager.hpp"
#include "Utils.hpp"

#include <iostream>

#define VELOCIDADE_QUEDA 30
#define VELOCIDADE_HORIZONTAL 7

#define MOVE_STACK_UP_VELOCITY 5
#define MOVE_STACK_RIGHT_VELOCITY 5

void setPosicaoInicial( Food* ingrediente );

ScreenJogo::ScreenJogo( GameRef& gameRef, Fila* fila, Fila* minha )
    : Screen( gameRef ) {
    loadAssets();
    caindo               = false;
    movendoHorizontal    = true;
    velocidadeHorizontal = VELOCIDADE_HORIZONTAL;
    this->filaMinha      = minha;
    this->filaModelo     = fila;

    modeloLanche = nullptr;
    meuLanche    = nullptr;
}

ScreenJogo::~ScreenJogo() {
    delete ingrediente;
}

void ScreenJogo::loadAssets() {
    TextureManager::add( "backgroundJogo", "jogo.jpg" );
    background.setTexture( TextureManager::get( "backgroundJogo" ) );

    TextureManager::add( "barraModelo", "barra_model.png" );
    barModel.setTexture( TextureManager::get( "barraModelo" ) );
    barModel.setPosition( 640, 30 );

    MusicManager::add( "musicJogar", "background.ogg" );
    music = &MusicManager::get( "musicJogar" );

    ingrediente = Utils::sortearQualquerItem();
    ingrediente->setPosition( WINDOW_WIDTH / 2 - ingrediente->getGlobalBounds().width / 2, 0 );
}
void ScreenJogo::draw() {
    window->clear();

    window->draw( background );

    window->draw( *modeloLanche );
    window->draw( *meuLanche );

    if( ingrediente != nullptr ) {
        window->draw( *ingrediente );
    }

    window->display();
}
void ScreenJogo::update() {
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

    if( *isAudioOn && music->getStatus() != sf::SoundSource::Status::Playing ) {
        music->play();
    }

    if( modeloLanche == nullptr ) {
        modeloLanche = filaModelo->Retira();
        modeloLanche->setPosition( 0, WINDOW_HEIGHT - 85 );
    }

    if( meuLanche == nullptr ) {
        meuLanche = new Lanche( modeloLanche->getTamanho() );
        meuLanche->inserir( new PaoInferior() );
        meuLanche->setPosition( WINDOW_WIDTH / 2 - 50, WINDOW_HEIGHT - 85 );
    }

    movimentar();

    if( caindo ) {
        if( Collision::PixelPerfectTest( *ingrediente, *meuLanche->getTopo() ) ) {
            caindo = false;
            if( !ingrediente->getComidaCerta() ) {
                delete ingrediente;
                ingrediente = nullptr;
                music->stop();
                *nextScreen = PERDEU;
            } else {
                ingrediente->setPosition( meuLanche->getTopo()->getPosition().x,
                                          meuLanche->getTopo()->getPosition().y -
                                              INGREDIENTE_MARGIN );
                meuLanche->inserir( ingrediente );
            }
        } else if( meuLanche->faltaApenasPaoSuperior() &&
                   ingrediente->getAlias() == "paoSuperior" &&
                   Utils::isForaDaJanelaVerticalmente( ingrediente ) ) {
            caindo = false;
            delete ingrediente;
            ingrediente = nullptr;
            music->stop();
            *nextScreen = PERDEU;
        }
    }

    draw();

    if( meuLanche->getTamanho() == modeloLanche->getTamanho() ) {
        filaMinha->Insere( meuLanche );
        if( !filaModelo->Vazia() ) {
            modeloLanche = nullptr;
            meuLanche    = nullptr;
        } else {
            ingrediente = nullptr;
            music->stop();
            *nextScreen = COMPARA;
        }
    }
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
        if( meuLanche->faltaApenasPaoSuperior() ) {
            ingrediente = new PaoSuperior();
        } else {
            ingrediente = Utils::sortearQualquerItem();
        }
        setPosicaoInicial( ingrediente );
        movendoHorizontal = true;
    }
}

void setPosicaoInicial( Food* ingrediente ) {
    ingrediente->setPosition( WINDOW_WIDTH / 2 - ingrediente->getGlobalBounds().width / 2, 0 );
}
