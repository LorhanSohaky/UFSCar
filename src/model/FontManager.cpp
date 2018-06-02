#include "../../include/FontManager.hpp"
#include "../../include/Config.hpp"

std::map< std::string, std::pair< std::string, std::unique_ptr< sf::Font > > >
    FontManager::fontsMap;

sf::Font& FontManager::add( const std::string& alias, const std::string& filePath ) {
    auto it = fontsMap.find( alias );

    if( it != fontsMap.end() ) {
        return *it->second.second;
    }

    std::unique_ptr< sf::Font > font = std::make_unique< sf::Font >();
    if( !font->loadFromFile( DEFAULT_FONT_PATH + filePath ) ) {
        std::string exception = "File " + ( DEFAULT_FONT_PATH + filePath ) + " not found!";
        throw std::runtime_error( exception );
    }

    fontsMap.insert( std::make_pair( alias, std::make_pair( filePath, std::move( font ) ) ) );

    return get( alias );
}

void FontManager::remove( const std::string& alias ) {
    fontsMap.erase( alias );
}

sf::Font& FontManager::get( const std::string& alias ) {
    return *fontsMap[ alias ].second;
}
