#include "../../include/Bife.hpp"
#include "../../include/TextureManager.hpp"

Bife::Bife()
    : Food( TextureManager::add( "bife", "foods/bife.png" ), true ) {
}
