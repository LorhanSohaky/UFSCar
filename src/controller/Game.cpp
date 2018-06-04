#include "../../include/Game.hpp"
#include "../../include/ScreenCreditos.hpp"
#include "../../include/ScreenMenu.hpp"
#include "../../include/TextureManager.hpp"

Game::Game( const std::string& titulo,
            const int largura,
            const int altura,
            const int limiteDeFrames ) {
    gameRef->window =
        new sf::RenderWindow( sf::VideoMode( largura, altura ), titulo, sf::Style::Close );

    gameRef->window->setFramerateLimit( limiteDeFrames );
    gameRef->isAudioOn  = true;
    gameRef->nextScreen = CREDITOS;

    gameRef->inputManager = new InputManager( &gameRef->event, gameRef->window );
}

void Game::run() {
    ScreenMenu menu( gameRef );
    ScreenCreditos creditos( gameRef );

    while( gameRef->window->isOpen() ) {
        switch( gameRef->nextScreen ) {
            case MENU:
                menu.update();
                break;
            case CREDITOS:
                creditos.update();
                break;
            default:
                menu.update();
        }
    }
}

Game::~Game() {
    delete gameRef->window;
    delete gameRef->inputManager;
}
