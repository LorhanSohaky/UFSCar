#include "../../include/Alface.hpp"
#include "../../include/TextureManager.hpp"

Alface::Alface()
    : Food( TextureManager::add( "alface", "foods/alface.png" ), true ) {
}
