#ifndef TREE_HPP
#define TREE_HPP

#include "Node.hpp"

template < class T >
class Tree {
  public:
    explicit Tree();
    void insert( const T value );

  private:
    Node< T >* root;

    void insert( Node< T >** node, T value );
};

#include "../Tree.cpp"

#endif