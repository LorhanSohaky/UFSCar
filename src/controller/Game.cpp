#include "Game.hpp"
#include "Config.hpp"
#include "ScreenCompara.hpp"
#include "ScreenCreditos.hpp"
#include "ScreenGanhou.hpp"
#include "ScreenJogo.hpp"
#include "ScreenMenu.hpp"
#include "ScreenMostrar.hpp"
#include "ScreenPerdeu.hpp"
#include "TextureManager.hpp"
#include "Utils.hpp"

Game::Game( const std::string& titulo,
            const int largura,
            const int altura,
            const int limiteDeFrames ) {
    gameRef->window =
        new sf::RenderWindow( sf::VideoMode( largura, altura ), titulo, sf::Style::Close );

    gameRef->window->setFramerateLimit( limiteDeFrames );
    gameRef->isAudioOn  = true;
    gameRef->nextScreen = JOGAR;

    gameRef->inputManager = new InputManager( &gameRef->event, gameRef->window );

    filaModelo     = new Fila();
    filaComparacao = new Fila();
    filaMeu        = new Fila();

    for( int i = 0; i < 2; i++ ) {
        Lanche* lanche = Utils::criarLancheAleatorio( 3 );
        lanche->setPosition( WINDOW_WIDTH + i * 130,
                             WINDOW_HEIGHT / 2 - lanche->getTopo()->getGlobalBounds().height / 2 );

        filaModelo->Insere( lanche );
        filaComparacao->Insere( lanche );
    }
}

void Game::run() {
    ScreenMenu menu( gameRef );
    ScreenCreditos creditos( gameRef );
    ScreenJogo jogo( gameRef, filaModelo, filaMeu );
    ScreenCompara compara( gameRef );
    ScreenGanhou ganhou( gameRef );
    ScreenPerdeu perdeu( gameRef );
    ScreenMostrar mostrar( gameRef, filaModelo );

    while( gameRef->window->isOpen() ) {
        switch( gameRef->nextScreen ) {
            case MENU:
                menu.update();
                break;
            case CREDITOS:
                creditos.update();
                break;
            case JOGAR:
                jogo.update();
                break;
            case COMPARA:
                compara.update();
                break;
            case GANHOU:
                ganhou.update();
                break;
            case PERDEU:
                perdeu.update();
                break;
            case MOSTRAR:
                mostrar.update();
                break;
            default:
                menu.update();
        }
    }
}

Game::~Game() {
    delete gameRef->window;
    delete gameRef->inputManager;
    delete filaModelo;
    delete filaMeu;
}
