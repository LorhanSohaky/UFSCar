#ifndef SCREEN_CREDITOS_HPP
#define SCREEN_CREDITOS_HPP

#include "Screen.hpp"
#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>
#include <array>

class ScreenCreditos : Screen {
  public:
    explicit ScreenCreditos( GameRef& gameRef );

    void loadAssets();
    void draw();
    void update();

  private:
    void centralizarTexto();

    sf::Sprite background;
    sf::Music* music;

    bool isPlayingMusic;

    std::array< sf::Text, 5 > lines;
};

#endif
