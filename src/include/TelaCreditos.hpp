#ifndef TELACREDITOS_HPP
#define TELACREDITOS_HPP

#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>

#include "Utils.hpp"

class TelaCreditos {
  public:
    TelaCreditos( sf::RenderWindow* window, bool* isAudioOn );
    WINDOW_STATES run();

  private:
    sf::RenderWindow* window;

    sf::Music* musica;

    sf::Sprite background;

    sf::Font SG;
    sf::Text text;

    bool* isAudioOn;
    bool isRunnig;

    void loadSprites();
    void loadSounds();
    void loadFonts();
};

#endif
