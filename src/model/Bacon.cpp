#include "../../include/Bacon.hpp"
#include "../../include/TextureManager.hpp"

Bacon::Bacon()
    : Food( TextureManager::add( "bacon", "foods/bacon.png" ), true ) {
}
