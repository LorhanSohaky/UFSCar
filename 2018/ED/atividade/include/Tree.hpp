#ifndef TREE_HPP
#define TREE_HPP

#include "Node.hpp"

template < class T >
class Tree {
  public:
    explicit Tree();
    void push( const T value );

  private:
    Node< T >* root;

    void push( Node< T >** node, T value );
};

#include "../Tree.cpp"

#endif