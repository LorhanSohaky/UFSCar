#include "../../include/Game.hpp"
#include "../../include/ScreenCompara.hpp"
#include "../../include/ScreenCreditos.hpp"
#include "../../include/ScreenGanhou.hpp"
#include "../../include/ScreenJogo.hpp"
#include "../../include/ScreenMenu.hpp"
#include "../../include/ScreenMostrar.hpp"
#include "../../include/ScreenPerdeu.hpp"
#include "../../include/TextureManager.hpp"

Game::Game( const std::string& titulo,
            const int largura,
            const int altura,
            const int limiteDeFrames ) {
    gameRef->window =
        new sf::RenderWindow( sf::VideoMode( largura, altura ), titulo, sf::Style::Close );

    gameRef->window->setFramerateLimit( limiteDeFrames );
    gameRef->isAudioOn  = true;
    gameRef->nextScreen = MOSTRAR;

    gameRef->inputManager = new InputManager( &gameRef->event, gameRef->window );

    fila = new Fila();
}

void Game::run() {
    ScreenMenu menu( gameRef );
    ScreenCreditos creditos( gameRef );
    ScreenJogo jogo( gameRef );
    ScreenCompara compara( gameRef );
    ScreenGanhou ganhou( gameRef );
    ScreenPerdeu perdeu( gameRef );
    ScreenMostrar mostrar( gameRef, fila );

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
    delete fila;
}
