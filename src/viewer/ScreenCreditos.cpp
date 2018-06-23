#include "../../include/ScreenCreditos.hpp"
#include "../../include/Config.hpp"
#include "../../include/FontManager.hpp"
#include "../../include/MusicManager.hpp"
#include "../../include/TextureManager.hpp"

ScreenCreditos::ScreenCreditos( GameRef& gameRef )
    : Screen( gameRef ) {
    loadAssets();
    centralizarTexto();
}

void ScreenCreditos::loadAssets() {
    FontManager::add( "RobotoCondensed", "roboto-condensed/RobotoCondensed-Bold.ttf" );

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

    TextureManager::add( "backgroundCreditos", "credits.jpg" );
    background.setTexture( TextureManager::get( "backgroundCreditos" ) );

    if( *isAudioOn ) {
        MusicManager::add( "ganhou", "happy_ending.ogg" );
        music = &MusicManager::get( "ganhou" );
        music->setLoop( true );
    }
}

void ScreenCreditos::centralizarTexto() {
    int y = WINDOW_HEIGHT;

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
    if( *isAudioOn && music->getStatus() != sf::SoundSource::Status::Playing ) {
        music->play();
    }

    while( window->pollEvent( *event ) ) {
        if( event->type == sf::Event::Closed ) {
            music->stop();
            window->close();
        }
    }
    for( unsigned int i = 0; i < lines.size(); i++ ) {
        lines[ i ].move( 0, -2.8f );
    }

    // Para quando a última linha estiver fora da view
    if( lines[ lines.size() - 1 ].getPosition().y <
        -( lines[ lines.size() - 1 ].getGlobalBounds().height + 10 ) ) {
        centralizarTexto();
        music->stop();
        *nextScreen = MENU;
    }

    draw();
}
