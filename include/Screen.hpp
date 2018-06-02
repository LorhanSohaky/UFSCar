#ifndef SCREEN_HPP
#define SCREEN_HPP

#include "Collision.hpp"
#include "Utils.hpp"
#include <SFML/Graphics.hpp>

class Screen {
  public:
    explicit Screen( GameRef& gameRef );

    virtual void loadAssets() = 0;
    virtual void draw()       = 0;
    virtual void update()     = 0;

  protected:
    InputManager* inputManager;

    sf::RenderWindow* window;
    sf::Event* event;
    bool* isAudioOn;
    WINDOW_STATES* nextScreen;

  private:
};

#endif
