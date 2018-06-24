#include "../../include/ScreenMostrar.hpp"
#include "../../include/Config.hpp"
#include "../../include/Lanche.hpp"
#include "../../include/MusicManager.hpp"
#include "../../include/PaoInferior.hpp"
#include "../../include/PaoSuperior.hpp"
#include "../../include/TextureManager.hpp"
#include "../../include/Utils.hpp"

ScreenMostrar::ScreenMostrar( GameRef& gameRef, Fila* fila )
    : Screen( gameRef ) {
    this->fila = fila;
    loadAssets();

    for( int i = 0; i < 5; i++ ) {
        Lanche* lanche = new Lanche( 3 );
        lanche->empilhar( new PaoInferior() );
        while( !lanche->faltaApenasPaoSuperior() ) {
            lanche->empilhar( Utils::sortearItemCerto() );
        }
        lanche->empilhar( new PaoSuperior() );
        lanche->setPosition( i * 130, 100 );

        fila->Insere( lanche );
    }
}

void ScreenMostrar::loadAssets() {
    TextureManager::add( "backgroundJogo", "jogo.jpg" );
    background.setTexture( TextureManager::get( "backgroundJogo" ) );

    MusicManager::add( "musicJogar", "background.ogg" );
    music = &MusicManager::get( "musicJogar" );
    music->setLoop( true );
}
void ScreenMostrar::draw() {
    window->clear();

    window->draw( background );
    window->draw( *fila );

    window->display();
}
void ScreenMostrar::update() {
    if( *isAudioOn && music->getStatus() != sf::SoundSource::Status::Playing ) {
        music->play();
    }

    while( window->pollEvent( *event ) ) {
        if( event->type == sf::Event::Closed ) {
            music->stop();
            window->close();
        }
    }

    draw();
}
