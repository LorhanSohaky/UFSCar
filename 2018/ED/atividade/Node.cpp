#include "include/Node.hpp"

Node::Node( const int& value, Node* const left, Node* const right ) {
    this->value = value;
    this->left  = left;
    this->right = right;
}

int Node::getValue() const {
    return this->value;
}