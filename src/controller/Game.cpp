#include "../../include/Game.hpp"
#include "../../include/ScreenMenu.hpp"
#include "../../include/TextureManager.hpp"

Game::Game( const std::string titulo,
            const int largura,
            const int altura,
            const int limiteDeFrames ) {
    gameRef->window =
        new sf::RenderWindow( sf::VideoMode( largura, altura ), titulo, sf::Style::Close );

    gameRef->window->setFramerateLimit( limiteDeFrames );
    gameRef->isAudioOn    = true;
    gameRef->estadoJanela = MENU;

    gameRef->inputManager = new InputManager( &gameRef->event, gameRef->window );
}

void Game::run() {
    ScreenMenu menu( gameRef );

    while( gameRef->window->isOpen() ) {
        switch( gameRef->estadoJanela ) {
            case MENU:
                menu.update();
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
