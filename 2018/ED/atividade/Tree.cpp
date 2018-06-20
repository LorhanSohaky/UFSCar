#ifdef TREE_HPP

#include <cstddef>
#include <iostream>

template < class T >
Tree< T >::Tree() {
    this->root = nullptr;
}

template < class T >
void Tree< T >::insert( const T value ) {
    insert( &( this->root ), value );
}

template < class T >
void Tree< T >::insert( Node< T >** node, T value ) {
    if( *node == nullptr ) {
        *node = new Node< T >( value, nullptr, nullptr );
        return;

    } else if( value < ( *node )->getValue() ) {
        insert( &( ( *node )->left ), value );
    } else if( value > ( *node )->getValue() ) {
        insert( &( ( *node )->right ), value );
    } else {
        throw std::runtime_error( "Duplicate value" );
    }
}

#endif