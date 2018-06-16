#include "../../include/Cebola.hpp"
#include "../../include/TextureManager.hpp"

Cebola::Cebola()
    : Food( TextureManager::add( "cebola", "foods/cebola.png" ), true ) {
}
