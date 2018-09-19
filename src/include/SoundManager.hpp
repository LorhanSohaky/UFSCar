#ifndef SOUNDMANAGER_HPP
#define SOUNDMANAGER_HPP

#include <SFML/Audio.hpp>
#include <map>
#include <memory>
#include <utility>

class SoundManager {
  private:
    static std::map< std::string, std::pair< std::string, std::unique_ptr< sf::SoundBuffer > > >
        soundsMap;

  public:
    SoundManager();

    static sf::SoundBuffer& add( const std::string& alias, const std::string& filePath ) throw();

    static void remove( const std::string& alias );

    static sf::SoundBuffer& get( const std::string& alias );
};

#endif
