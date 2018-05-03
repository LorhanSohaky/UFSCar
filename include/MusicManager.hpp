#ifndef MUSICMANAGER_HPP
#define MUSICMANAGER_HPP

#include <SFML/Audio.hpp>
#include <map>
#include <memory>
#include <utility>

class MusicManager {
  private:
    static std::map< std::string, std::pair< std::string, std::unique_ptr< sf::Music > > >
        musicsMap;

  public:
    MusicManager();

    static sf::Music& add( const std::string& alias, const std::string& filePath ) throw();

    static void remove( const std::string& alias );

    static sf::Music& get( const std::string& alias );
};

#endif
