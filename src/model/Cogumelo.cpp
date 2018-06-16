#include "../../include/Cogumelo.hpp"
#include "../../include/TextureManager.hpp"

Cogumelo::Cogumelo()
    : Food( TextureManager::add( "cogumelo", "foods/cogumelo.png", true ), true ) {
}
