#include "Config.hpp"
#include "Game.hpp"

int main() {
    Game game( TITLE, WINDOW_WIDTH, WINDOW_HEIGHT, FRAME_LIMIT );

    game.run();

    return EXIT_SUCCESS;
}
