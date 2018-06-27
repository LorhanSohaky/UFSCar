#ifndef SCREEN_COMPARA_HPP
#define SCREEN_COMPARA_HPP

#include "Fila.hpp"
#include "Lanche.hpp"
#include "Screen.hpp"
#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>

class ScreenCompara : Screen {
  public:
    explicit ScreenCompara( GameRef& gameRef, Fila* modeloFila, Fila* minhaFila );

    void loadAssets();
    void draw();
    void update();

  private:
    sf::Sprite background;
    sf::Music* music;
    Lanche* lancheModelo;
    Lanche* lancheMeu;

    bool remover;

    Fila* minhaFila;
    Fila* modeloFila;
};

#endif
