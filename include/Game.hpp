#ifndef GAME_HPP
#define GAME_HPP

#include "Utils.hpp"

#include <SFML/Graphics.hpp>

class Game {
  public:
    Game( const std::string titulo, const int largura, const int altura, const int limiteDeFrames );
    void run();
    ~Game();

  private:
    GameRef gameRef = std::make_shared< GameData >();
};

#endif
