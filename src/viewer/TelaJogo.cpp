#include "TelaJogo.hpp"

#include "MusicManager.hpp"
#include "SoundManager.hpp"
#include "TextureManager.hpp"

#include "Comida.hpp"
#include "Config.hpp"

#include <cstdlib>
#include <iostream>
#include <vector>

#define MAX_LEVELS 15

#define PAO_INFERIOR_LARGURA 130
#define PAO_INFERIOR_ALTURA 100
#define PAO_SUPERIOR_CORRECAO 0.7

#define DEFAULT_X_LANCHE_MODELO 5
#define DEFAULT_Y_LANCHE_MODELO WINDOW_HEIGHT - 100

#define DEFAULT_X_MEU_LANCHE ( WINDOW_WIDTH / 2 ) - ( PAO_INFERIOR_LARGURA / 2 )
#define DEFAULT_Y_MEU_LANCHE WINDOW_HEIGHT - 100

#define INGREDIENTE_MARGIN 15
#define WINDOW_WIDTH_MARGIN ( WINDOW_WIDTH - PAO_INFERIOR_LARGURA ) + 0.0f
#define WINDOW_HEIGHT_MARGIN ( WINDOW_HEIGHT - PAO_INFERIOR_ALTURA ) + 0.0f

#define MOVE_STACK_UP_VELOCITY 5
#define MOVE_STACK_RIGHT_VELOCITY 5

#define INITIAL_HAMBURGUER_SIZE 3

Comida* gerarPaoSuperior();

bool nomeComidaEstaNaLIstaDeComidasCertas( const std::string comida );

Comida* getComidaTopoDaPilha( Pilha< Comida* >* pilha );

void deletarPilhaComida( Pilha< Comida* >* pilha );

TelaJogo::TelaJogo( sf::RenderWindow* window, bool* isAudioOn ) {
    this->window    = window;
    this->isAudioOn = isAudioOn;
}

void TelaJogo::loadSprites() {
    background.setTexture( TextureManager::get( "fundoJogo" ) );

    somClick.setBuffer( SoundManager::get( "empilhar" ) );
}
void TelaJogo::loadSounds() {
    musica = &MusicManager::add( "jogo", "background.ogg" );
    musica->setLoop( true );
}

WINDOW_STATES TelaJogo::run() {
    loadSprites();
    loadSounds();

    WINDOW_STATES windowState;

    sf::Event event;

    isRunnig = true;
    bool jogando;

    if( *isAudioOn ) {
        musica->play();
    }
    float velocidadeHorizontal = 7.0;
    float velocidadeQueda      = 30;

	int level = 1;

    int tamanhoHamburguer = INITIAL_HAMBURGUER_SIZE;

    while( isRunnig ) {
        jogando = true;

        bool vaiVolta = true;
        bool caindo   = false;

        lancheModelo = gerarLancheModelo( tamanhoHamburguer );
        meuLanche    = gerarMeuLanche( tamanhoHamburguer );

        Comida* comidaSelecionada = sortearNovaComida();

        sf::Sprite* spriteTopo = getComidaTopoDaPilha( meuLanche )->getSprite();

        while( jogando ) {
            while( window->pollEvent( event ) ) {
                if( event.type == sf::Event::Closed ) {
                    delete comidaSelecionada;
                    jogando     = false;
                    windowState = FECHAR;
                }
            }

            if( vaiVolta ) {
                comidaSelecionada->getSprite()->move( velocidadeHorizontal, 0.0f );
                if( ( comidaSelecionada->getSprite()->getPosition().x >= WINDOW_WIDTH_MARGIN ) ||
                    ( comidaSelecionada->getSprite()->getPosition().x <= 0.0 ) ) {
                    velocidadeHorizontal *= -1;
                }

                if( sf::Keyboard::isKeyPressed( sf::Keyboard::Key::Space ) ) {
                    vaiVolta = false;
                    caindo   = true;
                }
            } else if( caindo ) {
                comidaSelecionada->getSprite()->move( 0.0f, velocidadeQueda );
                if( comidaSelecionada->getSprite()->getGlobalBounds().intersects(
                        spriteTopo->getGlobalBounds() ) ) {
                    comidaSelecionada->getSprite()->move( 0.0f, 0.0f );
                    caindo = false;

                    if( comidaSelecionada->isComidaCerta() ) {
                        comidaSelecionada->getSprite()->setPosition( spriteTopo->getPosition().x,
                                                                     spriteTopo->getPosition().y -
                                                                         INGREDIENTE_MARGIN );
                        if( *isAudioOn ) {
                            somClick.play();
                        }
                        meuLanche->empilhar( comidaSelecionada );
                        spriteTopo = comidaSelecionada->getSprite();
                        if( meuLanche->getTamanho() == lancheModelo->getTamanho() ) {
                            jogando = false;
                        } else if( isUltimoIngrediente() ) {
                            comidaSelecionada = gerarPaoSuperior();
                        } else {
                            comidaSelecionada = sortearNovaComida();
                        }
                        vaiVolta = true;
                    } else {
                        delete comidaSelecionada;
                        windowState = PERDEU;
                        jogando     = false;
                    }

                } else if( ( comidaSelecionada->getSprite()->getPosition().y >=
                             WINDOW_HEIGHT_MARGIN ) ) {
                    comidaSelecionada->getSprite()->move( 0.0f, 0.0f );
                    caindo = false;

                    if( comidaSelecionada->getNome().compare( "paoSuperior" ) == 0 ) {
                        windowState = PERDEU;
                        jogando     = false;
                    }

                    delete comidaSelecionada;

                    if( isUltimoIngrediente() ) {
                        comidaSelecionada = gerarPaoSuperior();
                    } else {
                        comidaSelecionada = sortearNovaComida();
                    }
                    vaiVolta = true;
                }
            }

            if( jogando ) {
                window->draw( background );
                window->draw( *comidaSelecionada->getSprite() );
                drawPilha( lancheModelo );
                drawPilha( meuLanche );

                window->display();
                window->clear();
            }
        }

        velocidadeHorizontal += 1;
        tamanhoHamburguer += 1;
		level++;

        if( windowState == FECHAR || windowState == PERDEU ) {
            isRunnig = false;
        } else {
            while(
                !getComidaTopoDaPilha( meuLanche )
                     ->getSprite()
                     ->getGlobalBounds()
                     .intersects(
                         getComidaTopoDaPilha( lancheModelo )->getSprite()->getGlobalBounds() ) ) {
                window->draw( background );
                drawPilha( meuLanche );

                moveAndDrawPilha( lancheModelo );
                window->display();
                window->clear();
            }

            sf::Time delayTime = sf::milliseconds( 500 );
            sf::sleep( delayTime );
            if( compararLanches() ) {
                if( level > MAX_LEVELS ) {
                    windowState = GANHOU;
                    isRunnig    = false;
                }
            } else {
                windowState = PERDEU;
                isRunnig    = false;
            }
        }

        deletarPilhaComida( lancheModelo );
        deletarPilhaComida( meuLanche );
    }

    musica->stop();

    return windowState;
}

bool TelaJogo::compararLanches() {
    sf::Time delayTime = sf::milliseconds( 1000 );
    while( !meuLanche->isVazia() ) {
        Comida* meu    = meuLanche->desempilhar();
        Comida* modelo = lancheModelo->desempilhar();

        while( meu->getSprite()->getPosition().y != WINDOW_HEIGHT / 2 ) {
            meu->getSprite()->move( 0, -MOVE_STACK_UP_VELOCITY );
            modelo->getSprite()->move( 0, -MOVE_STACK_UP_VELOCITY );

            window->draw( background );

            if( !meuLanche->isVazia() ) {
                drawPilha( meuLanche );
                drawPilha( lancheModelo );
            }

            window->draw( *meu->getSprite() );
            window->draw( *modelo->getSprite() );

            window->display();
            window->clear();
        }

        meu->getSprite()->move( 0, 0 );
        modelo->getSprite()->move( 0, 0 );

        sf::sleep( delayTime );
        if( meu->getNome().compare( modelo->getNome() ) != 0 ) {
            meuLanche->empilhar( meu );
            lancheModelo->empilhar( modelo );

            return false;
        }

        while( meu->getSprite()->getPosition().y != 0 ) {
            meu->getSprite()->move( 0, -MOVE_STACK_UP_VELOCITY );
            modelo->getSprite()->move( 0, -MOVE_STACK_UP_VELOCITY );

            window->draw( background );

            if( !meuLanche->isVazia() ) {
                drawPilha( meuLanche );
                drawPilha( lancheModelo );
            }

            window->draw( *meu->getSprite() );
            window->draw( *modelo->getSprite() );

            window->display();
            window->clear();
        }

        delete meu;
        delete modelo;
    }

    return true;
}

bool TelaJogo::isUltimoIngrediente() {
    return meuLanche->getTamanho() == lancheModelo->getTamanho() - 1;
}

Pilha< Comida* >* TelaJogo::gerarMeuLanche( const int tamanho ) {
    Pilha< Comida* >* meuLanche = new Pilha< Comida* >( tamanho );

    Comida* paoInferior = new Comida( "paoInferior", true );
    paoInferior->setPosition( DEFAULT_X_MEU_LANCHE, DEFAULT_Y_MEU_LANCHE );

    meuLanche->empilhar( paoInferior );

    return meuLanche;
}

Pilha< Comida* >* TelaJogo::gerarLancheModelo( const int tamanho ) {
    Pilha< Comida* >* lancheModelo = new Pilha< Comida* >( tamanho );

    Comida* paoInferior = new Comida( "paoInferior", true );
    paoInferior->setPosition( DEFAULT_X_LANCHE_MODELO, DEFAULT_Y_LANCHE_MODELO );

    lancheModelo->empilhar( paoInferior );

    sf::Sprite* spriteTopo = paoInferior->getSprite();

    while( lancheModelo->getTamanho() != tamanho - 1 ) {
        std::string nomeIngrediente = randomNomeIngredienteCerto();
        Comida* comida              = new Comida( nomeIngrediente, true );

        comida->setPosition( spriteTopo->getPosition().x,
                             spriteTopo->getPosition().y - INGREDIENTE_MARGIN );
        lancheModelo->empilhar( comida );

        spriteTopo = comida->getSprite();
    }

    Comida* paoSuperior = new Comida( "paoSuperior", true );
    paoSuperior->setPosition( spriteTopo->getPosition().x + PAO_SUPERIOR_CORRECAO,
                              spriteTopo->getPosition().y - INGREDIENTE_MARGIN );

    lancheModelo->empilhar( paoSuperior );

    return lancheModelo;
}

Comida* getComidaTopoDaPilha( Pilha< Comida* >* pilha ) {
    Comida* comidaTopo = pilha->desempilhar();
    pilha->empilhar( comidaTopo );

    return comidaTopo;
}

std::string TelaJogo::randomNomeIngredienteCerto() {
    if( ingredientesCertos.empty() ) {
        for( int i = 0; i < QUANTIDADE_COMIDAS_CERTAS; i++ ) {
            ingredientesCertos.push_back( comidas_certas[ i ] );
        }
    }

    srand( time( NULL ) );
    int random = rand() % ingredientesCertos.size();

    std::string valor = ingredientesCertos[ random ];
    ingredientesCertos.erase( ingredientesCertos.begin() + random );

    return valor;
}

std::string TelaJogo::sortearNomeIngrediente() {
    if( todosIngredientes.empty() ) {
        for( int i = 0; i < QUANTIDADE_COMIDAS_CERTAS; i++ ) {
            todosIngredientes.push_back( comidas_certas[ i ] );
        }

        for( int i = todosIngredientes.size() - 1; i < QUANTIDADE_COMIDAS_ERRADAS; i++ ) {
            todosIngredientes.push_back( comidas_erradas[ i ] );
        }
    }

    srand( time( NULL ) );

    int random = rand() % todosIngredientes.size();

    std::string valor = todosIngredientes[ random ];
    todosIngredientes.erase( todosIngredientes.begin() + random );

    return valor;
}

Comida* gerarPaoSuperior() {
    Comida* comida = new Comida( "paoSuperior", true );

    sf::Sprite* spriteComida = comida->getSprite();
    spriteComida->setPosition( DEFAULT_X_MEU_LANCHE, 0 );

    return comida;
}

Comida* TelaJogo::sortearNovaComida() {
    std::string nomeComida = sortearNomeIngrediente();
    Comida* comida = new Comida( nomeComida, nomeComidaEstaNaLIstaDeComidasCertas( nomeComida ) );

    sf::Sprite* spriteComida = comida->getSprite();
    spriteComida->setPosition( DEFAULT_X_MEU_LANCHE, 0 );

    return comida;
}

bool nomeComidaEstaNaLIstaDeComidasCertas( const std::string comida ) {
    for( int i = 0; i < QUANTIDADE_COMIDAS_CERTAS; i++ ) {
        if( comidas_certas[ i ] == comida ) {
            return true;
        }
    }

    return false;
}

void TelaJogo::moveAndDrawPilha( Pilha< Comida* >* pilha ) {
    Pilha< Comida* > tmp( pilha->getTamanho() );

    while( !pilha->isVazia() ) {
        tmp.empilhar( pilha->desempilhar() );
    }

    while( !tmp.isVazia() ) {
        Comida* comida = tmp.desempilhar();
        comida->getSprite()->move( MOVE_STACK_RIGHT_VELOCITY, 0 );
        window->draw( *comida->getSprite() );
        pilha->empilhar( comida );
    }
}

void TelaJogo::drawPilha( Pilha< Comida* >* pilha ) {
    Pilha< Comida* > tmp( pilha->getTamanho() );

    while( !pilha->isVazia() ) {
        tmp.empilhar( pilha->desempilhar() );
    }

    while( !tmp.isVazia() ) {
        Comida* comida = tmp.desempilhar();
        window->draw( *comida->getSprite() );
        pilha->empilhar( comida );
    }
}

void deletarPilhaComida( Pilha< Comida* >* pilha ) {
    while( !pilha->isVazia() ) {
        delete pilha->desempilhar();
    }

    delete pilha;
}
