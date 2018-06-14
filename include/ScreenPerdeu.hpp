#ifndef SCREEN_PERDEU_HPP
#define SCREEN_PERDEU_HPP

#include "Screen.hpp"
#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>

class ScreenPerdeu : Screen {
  public:
    explicit ScreenPerdeu( GameRef& gameRef );

    void loadAssets();
    void draw();
    void update();

  private:
    sf::Sprite background;
    sf::Sprite menuButton;

    sf::Music* music;
    sf::Sound clickSound;
};

#endif
