#include "include/Node.hpp"
#include <cstddef>
#include <iostream>

int main() {
    Node< int >* node = new Node< int >( 10, nullptr, nullptr );
    std::cout << node->getValue() << std::endl;
    std::cout << node->left << std::endl;
    std::cout << node->right << std::endl;
    return 0;
}
