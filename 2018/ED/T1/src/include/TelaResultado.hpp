#ifndef TELARESULTADO_HPP
#define TELARESULTADO_HPP

#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>

#include "Utils.hpp"

class TelaResultado {
  public:
    TelaResultado( sf::RenderWindow* window, bool* isAudioOn );
    WINDOW_STATES run( const bool ganhou );

  private:
    sf::RenderWindow* window;

    sf::Music* musica;
    sf::Sound somClick;

    sf::Sprite background;
    sf::Sprite botaoJogarNovamente;

    bool ganhou;

    bool* isAudioOn;
    bool isRunnig;

    void loadSprites();
    void loadSounds();
};

#endif
