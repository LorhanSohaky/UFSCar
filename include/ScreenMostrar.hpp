#ifndef SCREEN_MOSTRAR_HPP
#define SCREEN_MOSTRAR_HPP

#include "Fila.hpp"
#include "Screen.hpp"
#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>

class ScreenMostrar : Screen {
  public:
    explicit ScreenMostrar( GameRef& gameRef, Fila* fila );

    void loadAssets();
    void draw();
    void update();

  private:
    sf::Sprite background;
    sf::Music* music;

    Fila* fila;
};

#endif
