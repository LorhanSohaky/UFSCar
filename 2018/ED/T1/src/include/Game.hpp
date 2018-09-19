#ifndef GAME_HPP
#define GAME_HPP

#include <SFML/Graphics.hpp>
#include <iostream>

#include "Utils.hpp"

class Game {
  private:
    sf::RenderWindow window;
    bool running;

    void loadTextures() const;
    void loadSounds() const;

    bool isAudioOn;

    WINDOW_STATES estadoJanela;

  public:
    Game( const std::string titulo, const int altura, const int largura, const int limiteDeFrames );
    void run();
};

#endif
