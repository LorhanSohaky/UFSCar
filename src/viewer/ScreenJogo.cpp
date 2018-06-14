#include "../../include/ScreenJogo.hpp"
#include "../../include/TextureManager.hpp"

ScreenJogo::ScreenJogo( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();
}

void ScreenJogo::loadAssets() {
    TextureManager::add( "backgroundJogo", "jogo.jpg" );

    background.setTexture( TextureManager::get( "backgroundJogo" ) );
}
void ScreenJogo::draw() {
    window->clear();

    window->draw( background );

    window->display();
}
void ScreenJogo::update() {
    while( window->pollEvent( *event ) ) {
        if( event->type == sf::Event::Closed ) {
            window->close();
        }
    }
    draw();
}
