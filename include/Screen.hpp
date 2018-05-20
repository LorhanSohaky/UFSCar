#ifndef SCREEN_HPP
#define SCREEN_HPP

#include "Utils.hpp"
#include <SFML/Graphics.hpp>

class Screen {
  public:
    Screen( GameRef gameRef );

    virtual void loadAssets() = 0;
    virtual void draw()       = 0;
    virtual void update()     = 0;

  protected:
    sf::RenderWindow* window;
    sf::Event event;
    bool* isAudioOn;
    WINDOW_STATES* estadoJanela;

  private:
};

#endif
