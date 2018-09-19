#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>
#include <ctime>

using namespace std;

// vetor para selecao do ingrediente
string vetor() {
    string vetor[ 12 ] = {"alce",
                          "bacon",
                          "bife",
                          "cebola",
                          "cogumelo",
                          "hamburguer",
                          "peperoni",
                          "picles",
                          "pimetao",
                          "queijo",
                          "salmao",
                          "tomate"};
    int random;

    srand( time( 0 ) );
    random = rand() % ( 12 - 2 ) + 1;

    return vetor[ random ];
}

int kkk() {
    int flag         = 0;
    bool vaiVolta    = true;
    float velocidade = 0.3; // velocidade de movimento horizontal da pilha

    // inicia a tela
    sf::RenderWindow window( sf::VideoMode( 800, 600 ), "Snack Stack" );

    // cria as texturas da tela
    sf::Texture fundo;
    fundo.loadFromFile( "fundo.png" );

    sf::Texture pao;
    pao.loadFromFile( "pao_inf.png" );

    sf::Texture ingrediente;
    // ingrediente.loadFromFile(); // TODO colocar o ingrediente certo

    sf::Texture fatia;
    fatia.loadFromFile( "pop_ingr.png" );

    // cria as sprites da tela e arruma a posição
    sf::Sprite sfundo( fundo );
    sfundo.setPosition( 0.0f, 0.0f );

    sf::Sprite spao( pao );
    spao.setPosition( 350.0f, 500.0f );

    sf::Sprite singrediente( ingrediente );
    singrediente.setPosition( 100.0f, 30.0f );

    sf::Sprite sfatia( fatia );
    sfatia.setPosition( 200.0f, 300.0f );

    // adiciona o audio
    sf::Music music;
    if( !music.openFromFile( "backgound.wav" ) ) {
        return 1;
    }
    music.play();

    // repete até fechar a tela
    while( window.isOpen() ) {
        sf::Event event;
        while( window.pollEvent( event ) ) {
            if( event.type == sf::Event::Closed )
                window.close();
        }
        if( vaiVolta ) {
            singrediente.move( velocidade, 0.0f );
            if( ( singrediente.getPosition().x >= 700.0f ) ||
                ( singrediente.getPosition().x <= 0.0 ) )
                velocidade = velocidade * ( -1.0 );
        }

        window.clear();
        window.draw( sfundo );
        if( flag == 0 ) {
            window.draw( sfatia );
            // sleep( 50000 );
            flag = 1;
        }
        window.draw( spao );
        window.draw( singrediente );
        window.display();
    }

    return 0;
}
