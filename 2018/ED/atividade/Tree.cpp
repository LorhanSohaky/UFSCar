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

template < class T >
bool Tree< T >::searchByKey( const int& key ) const {
    Node< T >* node = this->root;

    while( node != nullptr && key != node->getKey() ) {
        if( key < node->getKey() ) {
            node = node->left;
        } else {
            node = node->right;
        }
    }

    return node != nullptr;
}

template < class T >
int Tree< T >::searchByValue( const T& value ) const {
    Node< T >* node = searchByValue( this->root, value );

    if( node == nullptr ) {
        throw std::runtime_error( "No search results found" );
    }

    return node->getKey();
}

template < class T >
Node< T >* Tree< T >::searchByValue( Node< T >* const node, const T& value ) const {
    if( node == nullptr || value == node->getValue() ) {
        return node;
    }

    Node< T >* left  = searchByValue( node->left, value );
    Node< T >* right = searchByValue( node->right, value );

    if( left != nullptr && value == left->getValue() ) {
        return left;
    } else if( right != nullptr && value == right->getValue() ) {
        return right;
    } else {
        return nullptr;
    }
}

template < class T >
void Tree< T >::rotateLeft( Node< T >** root ) {
    Node< T >* node  = ( *root )->right;
    ( *root )->right = node->left;

    node->left = *root;
    *root      = node;
}

template < class T >
void Tree< T >::rotateRight( Node< T >** root ) {
    Node< T >* node = ( *root )->left;
    ( *root )->left = node->right;

    node->right = *root;
    *root       = node;
}

template < class T >
void Tree< T >::doubleRotateLeft( Node< T >** root ) {
    if( *root == nullptr ) {
        return;
    }

    rotateRight( ( *root )->right );
    rotateLeft( root );
}

template < class T >
void Tree< T >::doubleRotateRight( Node< T >** root ) {
    if( *root == nullptr ) {
        return;
    }

    rotateLeft( ( *root )->left );
    rotateRight( root );
}

template < class T >
int Tree< T >::factor( Node< T >* node ) {
    if( node->left != nullptr && node->right != nullptr ) {
        return node->left->height - node->right->height;
    } else if( node->left != nullptr && node->right == nullptr ) {
        return node->left->height - 0;
    } else if( node->left == nullptr && node->right != nullptr ) {
        return 0 - node->right->height;
    } else {
        return 0;
    }
}

#endif