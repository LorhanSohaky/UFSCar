#include "SoundManager.hpp"
#include "Config.hpp"

std::map< std::string, std::pair< std::string, std::unique_ptr< sf::SoundBuffer > > >
    SoundManager::soundsMap;

sf::SoundBuffer& SoundManager::add( const std::string& alias,
                                    const std::string& filePath ) throw() {
    auto it = soundsMap.find( alias );

    if( it != soundsMap.end() ) {
        return *it->second.second;
    }

    std::unique_ptr< sf::SoundBuffer > sound = std::make_unique< sf::SoundBuffer >();
    if( !sound->loadFromFile( DEFAULT_SOUND_PATH + filePath ) ) {
        throw;
    }

    soundsMap.insert( std::make_pair( alias, std::make_pair( filePath, std::move( sound ) ) ) );

    return get( alias );
}

void SoundManager::remove( const std::string& alias ) {
    soundsMap.erase( alias );
}

sf::SoundBuffer& SoundManager::get( const std::string& alias ) {
    return *soundsMap[ alias ].second;
}
