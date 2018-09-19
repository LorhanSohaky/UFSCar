#include "Game.hpp"

#include "MusicManager.hpp"
#include "SoundManager.hpp"
#include "TextureManager.hpp"

#include "TelaCreditos.hpp"
#include "TelaJogo.hpp"
#include "TelaMenu.hpp"
#include "TelaResultado.hpp"

Game::Game( const std::string titulo,
            const int largura,
            const int altura,
            const int limiteDeFrames )
    : window( sf::VideoMode( largura, altura ), titulo, sf::Style::Close ) {
    window.setFramerateLimit( limiteDeFrames );

    isAudioOn    = true;
    estadoJanela = MENU;

    loadTextures();
    loadSounds();

    running = false;
}

void Game::run() {
    running = true;

    TelaMenu menu( &window, &isAudioOn );
    TelaResultado resultado( &window, &isAudioOn );
    TelaJogo jogo( &window, &isAudioOn );
    TelaCreditos creditos( &window, &isAudioOn );

    while( running ) {
        switch( estadoJanela ) {
            case MENU:
                estadoJanela = menu.run();
                break;
            case JOGAR:
                estadoJanela = jogo.run();
                break;
            case CREDITOS:
                estadoJanela = creditos.run();
                break;
            case GANHOU:
                estadoJanela = resultado.run( true );
                break;
            case PERDEU:
                estadoJanela = resultado.run( false );
                break;
            case FECHAR:
                window.close();
                running = false;
                break;
        }
    }
}

void Game::loadTextures() const {
    TextureManager::add( "audioOn", "audio_on.png" );
    TextureManager::add( "audioOff", "audio_off.png" );

    TextureManager::add( "botaoCreditos", "credits.png" );
    TextureManager::add( "botaoPlay", "play.png" );

    TextureManager::add( "fundoCreditos", "credits.jpg" );
    TextureManager::add( "fundoMenu", "menu.jpg" );
    TextureManager::add( "fundoPerdeu", "gameover.png" );
    TextureManager::add( "fundoGanhou", "gamewin.png" );

    TextureManager::add( "botaoJogarNovamenteGanhou", "ganhou_btn.png" );
    TextureManager::add( "botaoJogarNovamentePerdeu", "fracassou_btn.png" );
    TextureManager::add( "fundoJogo", "jogo.jpg" );

    TextureManager::add( "botaoJogarNovamenteGanhou", "ganhou_btn.png" );
    TextureManager::add( "botaoJogarNovamentePerdeu", "fracassou_btn.png" );

    TextureManager::add( "alface", "foods/alface.png" );
    TextureManager::add( "bacon", "foods/bacon.png" );
    TextureManager::add( "bife", "foods/bife.png" );
    TextureManager::add( "cebola", "foods/cebola.png" );
    TextureManager::add( "cogumelo", "foods/cogumelo.png" );
    TextureManager::add( "hamburguer", "foods/hamburguer.png" );
    TextureManager::add( "paoInferior", "foods/pao_inf.png" );
    TextureManager::add( "paoSuperior", "foods/pao_sup.png" );
    TextureManager::add( "peperoni", "foods/peperoni.png" );
    TextureManager::add( "picles", "foods/picles.png" );
    TextureManager::add( "pimentao", "foods/pimentao.png" );
    TextureManager::add( "queijo", "foods/queijo.png" );
    TextureManager::add( "salmao", "foods/salmao.png" );
    TextureManager::add( "tomate", "foods/tomate.png" );

    TextureManager::add( "japonesa1", "foods/comida1.png" );
    TextureManager::add( "japonesa2", "foods/comida2.png" );
    TextureManager::add( "banana", "foods/comida3.png" );
    TextureManager::add( "pizza", "foods/comida4.png" );
}

void Game::loadSounds() const {
    SoundManager::add( "choice", "choice.ogg" );
    SoundManager::add( "empilhar", "empilhar.ogg" );
    SoundManager::add( "levelPass", "level_pass.ogg" );
}
