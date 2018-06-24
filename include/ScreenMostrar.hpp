#ifndef SCREEN_MOSTRAR_HPP
#define SCREEN_MOSTRAR_HPP

#include "Screen.hpp"
#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>

class ScreenMostrar : Screen {
  public:
    explicit ScreenMostrar( GameRef& gameRef );

    void loadAssets();
    void draw();
    void update();

  private:
    sf::Sprite background;
    sf::Sprite barModel;
    sf::Sprite barPlayer;
    sf::Music* music;
};

#endif // SCREEN_COMPARA_HPP
