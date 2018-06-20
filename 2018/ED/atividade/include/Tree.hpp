#ifndef TREE_HPP
#define TREE_HPP

#include "Node.hpp"
#include <iostream>

template < class T >
class Tree {
  public:
    explicit Tree();
    ~Tree();

    void insert( const int& key, const T& value );

    bool searchByKey( const int& key ) const;
    // Return key
    int searchByValue( const T& value ) const;

    // Display in-order
    friend std::ostream& operator<<( std::ostream& out, const Tree< T >& tree ) {
        return tree.display( out, tree.root );
    }

  private:
    Node< T >* root;

    std::ostream& display( std::ostream& out, Node< T >* const node ) const;

    void destroy( Node< T >** node );

    void insert( Node< T >** node, const int& key, const T& value );

    Node< T >* searchByValue( Node< T >* const node, const T& value ) const;
};

#include "../Tree.cpp"

#endif