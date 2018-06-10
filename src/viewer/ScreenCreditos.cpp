#include "../../include/ScreenCreditos.hpp"
#include "../../include/Config.hpp"
#include "../../include/FontManager.hpp"

ScreenCreditos::ScreenCreditos( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();
}

void ScreenCreditos::loadAssets() {
    FontManager::add( "RobotoCondensed", "roboto-condensed/RobotoCondensed-Regular.ttf" );

    for( unsigned int i = 0; i < lines.size(); i++ ) {
        lines[ i ].setFont( FontManager::get( "RobotoCondensed" ) );
        lines[ i ].setCharacterSize( 50 );
        lines[ i ].setFillColor( sf::Color::White );
        lines[ i ].setOutlineColor( sf::Color::Black );
        lines[ i ].setOutlineThickness( 3 );
    }

    lines[ 0 ].setString( "Fernanda Ferreira" );
    lines[ 1 ].setString( "Lorhan Sohaky" );
    lines[ 2 ].setString( "Sabrina Miranda" );
    lines[ 3 ].setString( L"UFSCar São Carlos" );
    lines[ 4 ].setString( "2018" );

    init();
    // TODO Add background texture
}

void ScreenCreditos::init() {
    int y = WINDOW_HEIGHT;

    // Centralizando texto na janela
    for( unsigned int i = 0; i < lines.size(); i++ ) {
        lines[ i ].move( 0, 0 );
        lines[ i ].setOrigin( lines[ i ].getLocalBounds().width / 2, 0 );
        lines[ i ].setPosition( WINDOW_WIDTH / 2, y );
        y += 60;
    }
}

void ScreenCreditos::draw() {
    window->clear();

    window->draw( background );

    for( unsigned int i = 0; i < lines.size(); i++ ) {
        window->draw( lines[ i ] );
    }

    window->display();
}

void ScreenCreditos::update() {
    while( window->pollEvent( *event ) ) {
        if( event->type == sf::Event::Closed ) {
            window->close();
        }
    }
    for( unsigned int i = 0; i < lines.size(); i++ ) {
        lines[ i ].move( 0, -1.5f );
    }

    // Para quando a última linha estiver fora da view
    if( lines[ lines.size() - 1 ].getPosition().y <
        -( lines[ lines.size() - 1 ].getGlobalBounds().height + 10 ) ) {
        init();
        *nextScreen = MENU;
    }

    draw();
}
