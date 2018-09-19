#include "Config.hpp"
#include "Game.hpp"

#include <iostream>
#define SFML_STATIC

int main() {
    Game game( TITLE, WINDOW_WIDTH, WINDOW_HEIGHT, FRAME_LIMIT );
    game.run();
    return 0;
}
