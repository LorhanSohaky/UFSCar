#include "include/Node.hpp"
#include "include/Tree.hpp"
#include <cstddef>
#include <iostream>

int main() {
    Node< std::string >* node = new Node< std::string >( 1, "Lorhan", nullptr, nullptr );
    std::cout << node->getValue() << std::endl;
    std::cout << node->left << std::endl;
    std::cout << node->right << std::endl;

    Tree< std::string > tree = Tree< std::string >();
    tree.insert( 10, "!" );
    tree.insert( 1, "Lorhan" );
    tree.insert( 2, "Sohaky" );
    tree.insert( 3, "top" );
    tree.insert( 4, "da" );
    tree.insert( 5, "balada" );
    std::cout << tree << std::endl;

    std::cout << tree.search( 3 ) << std::endl;

    return 0;
}
