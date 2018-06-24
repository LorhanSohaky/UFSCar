#include "include/Node.hpp"
#include "include/Tree.hpp"
#include <cstddef>
#include <iostream>

int main() {
    Node< std::string >* node = new Node< std::string >( 1, "Lorhan", nullptr, nullptr );
    std::cout << node->getValue() << std::endl;
    std::cout << node->left << std::endl;
    std::cout << node->right << std::endl;
    delete node;

    Tree< std::string > tree = Tree< std::string >();
    tree.insert( 10, "!" );
    tree.insert( 1, "Lorhan" );
    tree.insert( 2, "Sohaky" );
    tree.insert( 3, "top" );
    tree.insert( 4, "da" );
    tree.insert( 5, "balada" );
    std::cout << tree << std::endl;

    std::cout << tree.searchByValue( "top" ) << std::endl;
    std::cout << tree.searchByKey( 3 ) << std::endl;

    std::cout << "\n\n";
    Tree< char > tree2 = Tree< char >();

    tree2.insert( 2, '2' );
    tree2.insert( 1, '1' );
    tree2.insert( 4, '4' );
    tree2.insert( 3, '3' );
    tree2.insert( 5, '5' );
    std::cout << tree2 << std::endl;

    tree2.remove( 4 );
    std::cout << tree2 << std::endl;
    tree2.remove( 2 );
    std::cout << tree2 << std::endl;

    return 0;
}
