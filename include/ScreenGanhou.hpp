#ifndef SCREEN_GANHOU_HPP
#define SCREEN_GANHOU_HPP

#include "Screen.hpp"
#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>

class ScreenGanhou : Screen {
  public:
    explicit ScreenGanhou( GameRef& gameRef );

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
