#ifndef TREE_HPP
#define TREE_HPP

#include "Node.hpp"
#include <iostream>

template < class T >
class Tree {
  public:
    explicit Tree();
    void insert( const T value );

    // Display in-order
    friend std::ostream& operator<<( std::ostream& out, Tree< T >& tree ) {
        return tree.display( out, tree.root );
    }

  private:
    Node< T >* root;

    std::ostream& display( std::ostream& out, Node< T >* node );

    void insert( Node< T >** node, T value );
};

#include "../Tree.cpp"

#endif