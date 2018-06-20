#ifdef TREE_HPP

#include <cstddef>
#include <iostream>

template < class T >
Tree< T >::Tree() {
    this->root = nullptr;
}

template < class T >
void Tree< T >::push( const T value ) {
    push( &( this->root ), value );
}

template < class T >
void Tree< T >::push( Node< T >** node, T value ) {
    if( *node == nullptr ) {
        *node = new Node< T >( value, nullptr, nullptr );
        return;

    } else if( value < ( *node )->getValue() ) {
        push( &( ( *node )->left ), value );
    } else if( value > ( *node )->getValue() ) {
        push( &( ( *node )->right ), value );
    } else {
        throw std::runtime_error( "Duplicate value" );
    }
}

#endif