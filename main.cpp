#include <SFML/Graphics.hpp>
#include "include/TextureManager.hpp"
#include "include/Config.hpp"

int main() {
	sf::RenderWindow app(sf::VideoMode(WINDOW_WIDTH, WINDOW_HEIGHT), TITLE);

	TextureManager::add("img","cb.bmp");

	sf::Sprite sprite(TextureManager::get("img"));

	while (app.isOpen()) {
		sf::Event event;
		while (app.pollEvent(event)) {
			if (event.type == sf::Event::Closed) {
				app.close();
			}

		}

		app.clear();
		app.draw(sprite);
		app.display();
	}

	return EXIT_SUCCESS;
}
