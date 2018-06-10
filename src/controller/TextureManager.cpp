#include "../../include/TextureManager.hpp"
#include "../../include/Collision.hpp"
#include "../../include/Config.hpp"
#include <stdexcept>

std::map< std::string, std::pair< std::string, std::unique_ptr< sf::Texture > > >
    TextureManager::texturesMap;

sf::Texture& TextureManager::add( const std::string& alias,
                                  const std::string& filePath,
                                  const bool createBitmask ) {
    auto it = texturesMap.find( alias );

    if( it != texturesMap.end() ) {
        return *it->second.second;
    }

    std::unique_ptr< sf::Texture > texture = std::make_unique< sf::Texture >();
    ;
    if( ( createBitmask &&
          !Collision::CreateTextureAndBitmask( *texture, DEFAULT_TEXTURE_PATH + filePath ) ) ||
        ( !createBitmask && !texture->loadFromFile( DEFAULT_TEXTURE_PATH + filePath ) ) ) {
        std::string exception = "File " + ( DEFAULT_TEXTURE_PATH + filePath ) + " not found!";
        throw std::runtime_error( exception );
    }

    texturesMap.insert( std::make_pair( alias, std::make_pair( filePath, std::move( texture ) ) ) );

    return get( alias );
}

void TextureManager::remove( const std::string& alias ) {
    texturesMap.erase( alias );
}

sf::Texture& TextureManager::get( const std::string& alias ) {
    return *texturesMap[ alias ].second;
}
