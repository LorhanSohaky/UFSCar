#ifndef TELAJOGO_HPP
#define TELAJOGO_HPP

#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>

#include <iostream>
#include <vector>

#include "Comida.hpp"
#include "Pilha.hpp"
#include "Utils.hpp"

class TelaJogo {
  public:
    TelaJogo( sf::RenderWindow* window, bool* isAudioOn );
    WINDOW_STATES run();

  private:
    sf::RenderWindow* window;

    sf::Music* musica;
    sf::Sound somClick;

    sf::Sprite background;

    Pilha< Comida* >* lancheModelo;
    Pilha< Comida* >* meuLanche;

    std::vector< std::string > ingredientesCertos;
    std::vector< std::string > todosIngredientes;

    bool* isAudioOn;
    bool isRunnig;

    void loadSprites();
    void loadSounds();

    void drawPilha( Pilha< Comida* >* pilha );
    void moveAndDrawPilha( Pilha< Comida* >* pilha );
    bool compararLanches();

    std::string randomNomeIngredienteCerto();
    std::string sortearNomeIngrediente();

    Pilha< Comida* >* gerarMeuLanche( const int tamanho );
    Pilha< Comida* >* gerarLancheModelo( const int tamanho );

    Comida* sortearNovaComida();
    bool isUltimoIngrediente();
};

#endif
