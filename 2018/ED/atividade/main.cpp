#include "include/Node.hpp"
#include "include/Tree.hpp"
#include <cstddef>
#include <iostream>

int main() {
    Node< int >* node = new Node< int >( 10, nullptr, nullptr );
    std::cout << node->getValue() << std::endl;
    std::cout << node->left << std::endl;
    std::cout << node->right << std::endl;

    Tree< int > tree = Tree< int >();
    tree.insert( 45 );
    tree.insert( 16 );
    tree.insert( 55 );
    std::cout << tree << std::endl;
    return 0;
}
