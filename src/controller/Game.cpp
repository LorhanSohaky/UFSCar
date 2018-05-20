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

    TextureManager::add( "img", "cb.bmp" );
}

void Game::run() {
    ScreenMenu menu( gameRef );

    while( gameRef->window->isOpen() ) {
        menu.update();
    }
}

Game::~Game() {
    delete gameRef->window;
}
