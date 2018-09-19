#include "MusicManager.hpp"
#include "Config.hpp"

std::map< std::string, std::pair< std::string, std::unique_ptr< sf::Music > > >
    MusicManager::musicsMap;

sf::Music& MusicManager::add( const std::string& alias, const std::string& filePath ) throw() {
    auto it = musicsMap.find( alias );

    if( it != musicsMap.end() ) {
        return *it->second.second;
    }

    std::unique_ptr< sf::Music > music = std::make_unique< sf::Music >();
    if( !music->openFromFile( DEFAULT_MUSIC_PATH + filePath ) ) {
        throw;
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
