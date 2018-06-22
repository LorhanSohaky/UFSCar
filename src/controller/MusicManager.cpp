#include "../../include/MusicManager.hpp"
#include "../../include/Config.hpp"

std::map< std::string, std::pair< std::string, std::unique_ptr< sf::Music > > >
    MusicManager::musicsMap;

sf::Music& MusicManager::add( const std::string& alias, const std::string& filePath ) {
    auto it = musicsMap.find( alias );

    if( it != musicsMap.end() ) {
        return *it->second.second;
    }

    std::unique_ptr< sf::Music > music = std::make_unique< sf::Music >();
    if( !music->openFromFile( DEFAULT_MUSIC_PATH + filePath ) ) {
        std::string exception = "File " + ( DEFAULT_MUSIC_PATH + filePath ) + " not found!";
        throw std::runtime_error( exception );
    }

    musicsMap.insert( std::make_pair( alias, std::make_pair( filePath, std::move( music ) ) ) );

    return get( alias );
}

void MusicManager::remove( const std::string& alias ) {
    musicsMap.erase( alias );
}

sf::Music& MusicManager::get( const std::string& alias ) {
    return *musicsMap[ alias ].second;
}
