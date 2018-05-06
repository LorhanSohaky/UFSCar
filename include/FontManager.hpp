#ifndef FONTMANAGER_HPP_INCLUDED
#define FONTMANAGER_HPP_INCLUDED

#include <SFML/Graphics.hpp>
#include <map>
#include <memory>
#include <utility>

class FontManager {
  private:
    static std::map< std::string, std::pair< std::string, std::unique_ptr< sf::Font > > >
        fontsMap;

  public:
    FontManager();

    static sf::Font& add( const std::string& alias, const std::string& filePath ) throw();

    static void remove( const std::string& alias );

    static sf::Font& get( const std::string& alias );
};



#endif
