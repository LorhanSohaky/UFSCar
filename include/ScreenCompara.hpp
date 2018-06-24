#ifndef SCREEN_COMPARA_HPP
#define SCREEN_COMPARA_HPP

#include "Screen.hpp"
#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>

class ScreenCompara : Screen {
  public:
    explicit ScreenCompara( GameRef& gameRef );

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
