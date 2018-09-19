#ifndef TELAMENU_HPP
#define TELAMENU_HPP

#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>

#include "Utils.hpp"

class TelaMenu {
  public:
    TelaMenu( sf::RenderWindow* window, bool* isAudioOn );
    WINDOW_STATES run();

  private:
    sf::RenderWindow* window;

    sf::Music* musica;
    sf::Sound somClick;

    sf::Sprite background;
    sf::Sprite botaoJogar;
    sf::Sprite botaoCreditos;
    sf::Sprite botaoAudio;

    bool* isAudioOn;
    bool isRunnig;

    void loadSprites();
    void loadSounds();
};

#endif
