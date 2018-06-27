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

    meuLanche = new Lanche( 3 );
    meuLanche->inserir( new PaoInferior() );
    meuLanche->setPosition( WINDOW_WIDTH / 2 - 50, WINDOW_HEIGHT - 85 );
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
    while( window->pollEvent( *event ) ) {
        if( event->type == sf::Event::Closed ) {
            music->stop();
            window->close();
        }
    }

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
    if( *isAudioOn && music->getStatus() != sf::SoundSource::Status::Playing ) {
        music->play();
    }

    if( modeloLanche == nullptr ) {
        modeloLanche = filaModelo->Retira();
        modeloLanche->setPosition( 0, WINDOW_HEIGHT - 85 );
    }

    while( window->pollEvent( *event ) ) {
        if( inputManager->keyPressed( sf::Keyboard::Space ) ) {
            movendoHorizontal = false;
            caindo            = true;
        }
    }

    movimentar();

    if( caindo ) {
        if( Collision::PixelPerfectTest( *ingrediente, *meuLanche->getTopo() ) ) {
            caindo = false;
            if( !ingrediente->getComidaCerta() ) {
                delete ingrediente;
                music->stop();
                *nextScreen = PERDEU;
            } else {
                ingrediente->setPosition( meuLanche->getTopo()->getPosition().x,
                                          meuLanche->getTopo()->getPosition().y -
                                              INGREDIENTE_MARGIN );
                meuLanche->inserir( ingrediente );
            }
        }
    } else if( meuLanche->faltaApenasPaoSuperior() && ingrediente->getAlias() == "paoSuperior" &&
               Utils::isForaDaJanelaVerticalmente( ingrediente ) ) {
        caindo = false;
        delete ingrediente;
        music->stop();
        *nextScreen = PERDEU;
    }

    draw();

    if( meuLanche->getTamanho() == modeloLanche->getTamanho() ) {
        if( comparar() ) {
            if( !filaModelo->Vazia() ) {
                modeloLanche      = nullptr;
                caindo            = false;
                movendoHorizontal = true;
            } else {
                music->stop();
                *nextScreen = GANHOU;
            }
        }
    }
}

bool ScreenJogo::comparar() {
    bool comparando = true;

    while( comparando ) {
        if( !modeloLanche->getTopo()->getGlobalBounds().intersects(
                meuLanche->getTopo()->getGlobalBounds() ) ) {
            modeloLanche->move( MOVE_STACK_RIGHT_VELOCITY, 0 );
        } else {
            if( meuLanche->isVazia() ) {
                break;
            }
            Food* lancheMeu    = meuLanche->remover();
            Food* lancheModelo = modeloLanche->remover();
            while( lancheMeu->getPosition().y > WINDOW_HEIGHT / 2 ) {
                lancheMeu->move( 0, -MOVE_STACK_UP_VELOCITY );
                lancheModelo->move( 0, -MOVE_STACK_UP_VELOCITY );

                while( window->pollEvent( *event ) ) {
                    if( event->type == sf::Event::Closed ) {
                        music->stop();
                        window->close();
                    }
                }

                window->clear();

                window->draw( background );

                if( !modeloLanche->isVazia() ) {
                    window->draw( *modeloLanche );
                    window->draw( *meuLanche );
                }

                window->draw( *lancheMeu );
                window->draw( *lancheModelo );

                window->display();
            }

            if( lancheMeu->getAlias().compare( lancheModelo->getAlias() ) != 0 ) {
                std::cout << "Diferentes" << std::endl;
                ingrediente = nullptr;
                delete lancheMeu;
                delete lancheModelo;

                music->stop();
                *nextScreen = PERDEU;
                return false;
            } else {
                delete lancheMeu;
                ingrediente = nullptr;
                delete lancheModelo;
            }
        }

        draw();
    }

    return true;
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
