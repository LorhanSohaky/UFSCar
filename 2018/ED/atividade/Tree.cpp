#ifdef TREE_HPP

#include <cstddef>

template < class T >
Tree< T >::Tree() {
    this->root = nullptr;
}

template < class T >
Tree< T >::~Tree() {
    destroy( &( this->root ) );
}

template < class T >
void Tree< T >::destroy( Node< T >** node ) {
    if( *node != nullptr ) {
        destroy( &( *node )->left );
        destroy( &( *node )->right );
        delete( *node );
        node = nullptr;
    }
    return;
}

template < class T >
std::ostream& Tree< T >::display( std::ostream& out, Node< T >* const node ) const {
    if( node != nullptr ) {
        display( out, node->left );
        out << node->getValue() << ' ';
        display( out, node->right );
    }
    return out;
}

template < class T >
void Tree< T >::insert( const int& key, const T& value ) {
    insert( &( this->root ), key, value );
}

template < class T >
void Tree< T >::insert( Node< T >** node, const int& key, const T& value ) {
    if( *node == nullptr ) {
        *node = new Node< T >( key, value, nullptr, nullptr );
        return;

    } else if( key < ( *node )->getKey() ) {
        insert( &( ( *node )->left ), key, value );
    } else if( key > ( *node )->getKey() ) {
        insert( &( ( *node )->right ), key, value );
    } else {
        throw std::runtime_error( "Duplicate key" );
    }
}

#endif