#ifndef SCREEN_MENU_HPP
#define SCREEN_MENU_HPP

#include "Screen.hpp"
#include <SFML/Graphics.hpp>

class ScreenMenu : Screen {
  public:
    ScreenMenu( GameRef& gameRef );

    void loadAssets();
    void draw();
    void update();

  private:
    sf::Sprite sprite;
};

#endif
