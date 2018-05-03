#ifndef TEXTUREMANAGER_HPP
#define TEXTUREMANAGER_HPP

#include <SFML/Graphics.hpp>
#include <map>
#include <memory>
#include <utility>

class TextureManager {
  private:
    static std::map< std::string, std::pair< std::string, std::unique_ptr< sf::Texture > > >
        texturesMap;

  public:
    TextureManager();

    static sf::Texture& add( const std::string& alias, const std::string& filePath ) throw();

    static void remove( const std::string& alias );

    static sf::Texture& get( const std::string& alias );
};

#endif
