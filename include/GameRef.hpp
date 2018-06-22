#ifndef GAME_REF_HPP
#define GAME_REF_HPP

#include "InputManager.hpp"
#include <SFML/Graphics.hpp>
#include <memory>

enum WINDOW_STATES { MENU = 1, JOGAR, CREDITOS, GANHOU, PERDEU, FECHAR };

struct GameData {
    InputManager* inputManager;

    sf::RenderWindow* window;
    sf::Event event;
    bool isAudioOn;
    WINDOW_STATES nextScreen;
};

typedef std::shared_ptr< GameData > GameRef;

#endif