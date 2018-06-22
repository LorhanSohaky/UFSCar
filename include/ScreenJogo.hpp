#ifndef SCREEN_JOGO_HPP
#define SCREEN_JOGO_HPP

#include "Screen.hpp"
#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>

class ScreenJogo : Screen {
  public:
    explicit ScreenJogo( GameRef& gameRef );

    void loadAssets();
    void draw();
    void update();

  private:
    sf::Sprite background;
    sf::Sprite bar;
    sf::Music* music;
};

#endif
