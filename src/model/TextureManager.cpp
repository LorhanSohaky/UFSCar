#include "TextureManager.hpp"
#include "Config.hpp"

std::map< std::string, std::pair< std::string, std::unique_ptr< sf::Texture > > >
    TextureManager::texturesMap;

sf::Texture& TextureManager::add( const std::string& alias, const std::string& filePath ) throw() {
    auto it = texturesMap.find( alias );

    if( it != texturesMap.end() ) {
        return *it->second.second;
    }

    std::unique_ptr< sf::Texture > texture = std::make_unique< sf::Texture >();
    if( !texture->loadFromFile( DEFAULT_TEXTURE_PATH + filePath ) ) {
        throw;
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
