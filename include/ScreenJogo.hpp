#ifndef SCREEN_JOGO_HPP
#define SCREEN_JOGO_HPP

#include "Fila.hpp"
#include "Food.hpp"
#include "Lanche.hpp"
#include "Screen.hpp"
#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>

class ScreenJogo : Screen {
  public:
    explicit ScreenJogo( GameRef& gameRef, Fila* fila, Fila* minha );
    ~ScreenJogo();

    void loadAssets();
    void draw();
    void update();

  private:
    void movimentar();
    bool comparar();

    sf::Sprite background;
    sf::Sprite barModel;
    sf::Music* music;

    Food* ingrediente;
    Lanche* meuLanche;
    Lanche* modeloLanche;

    Fila* filaModelo;
    Fila* filaMinha;

    bool caindo;

    bool movendoHorizontal;
    float velocidadeHorizontal;
};

#endif
