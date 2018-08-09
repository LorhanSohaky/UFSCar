#ifdef TREE_HPP

#include <cstddef>
#include <cstdlib>

int compare( const int left, const int right );

template < class T >
int heightNode( Node< T >* node );

template < class T >
Node< T >* searchSmallerNode( Node< T >* node );

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
        if( factor( *node ) >= 2 ) {
            if( key < ( *node )->left->getKey() ) {
                rotateRight( node );
            } else {
                doubleRotateRight( node );
            }
        }
    } else if( key > ( *node )->getKey() ) {
        insert( &( ( *node )->right ), key, value );
        if( factor( *node ) >= 2 ) {
            if( key > ( *node )->right->getKey() ) {
                rotateLeft( node );
            } else {
                doubleRotateLeft( node );
            }
        }
    } else {
        throw std::runtime_error( "Duplicate key" );
    }

    ( *node )->height =
        compare( heightNode( ( *node )->left ), heightNode( ( *node )->right ) ) + 1;
}

template < class T >
void Tree< T >::remove( const int& key ) {
    remove( &( this->root ), key );
}

template < class T >
void Tree< T >::remove( Node< T >** node, const int& key ) {
    if( *node == nullptr ) {
        throw std::runtime_error( "Invalid key" );
    } else if( key < ( *node )->getKey() ) {
        remove( &( ( *node )->left ), key );
        if( factor( *node ) >= 2 ) {
            if( heightNode( ( *node )->right->left ) <= heightNode( ( *node )->right->right ) ) {
                rotateLeft( node );
            } else {
                doubleRotateLeft( node );
            }
        }
    } else if( key > ( *node )->getKey() ) {
        remove( &( ( *node )->right ), key );
        if( factor( *node ) >= 2 ) {
            if( heightNode( ( *node )->left->right ) <= heightNode( ( *node )->left->left ) ) {
                rotateRight( node );
            } else {
                doubleRotateRight( node );
            }
        }
    } else {
        if( ( *node )->left == nullptr || ( *node )->right == nullptr ) {
            Node< T >* oldNode = ( *node );

            if( ( *node )->left != nullptr ) {
                *node = ( *node )->left;
            } else {
                *node = ( *node )->right;
            }
            delete oldNode;
        } else {
            Node< T >* tmp     = searchSmallerNode( ( *node )->right );
            Node< T >* oldNode = *node;

            ( *node ) =
                new Node< T >( tmp->getKey(), tmp->getValue(), oldNode->left, oldNode->right );
            delete oldNode;

            remove( &( *node )->right, ( *node )->getKey() );
            if( factor( ( *node ) ) >= 2 ) {
                if( heightNode( ( *node )->left->right ) <= heightNode( ( *node )->left->left ) ) {
                    rotateRight( node );
                } else {
                    doubleRotateRight( node );
                }
            }
        }
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

    ( *root )->height =
        compare( heightNode( ( *root )->left ), heightNode( ( *root )->right ) ) + 1;
    node->height = compare( heightNode( node->right ), ( *root )->height ) + 1;

    *root = node;
}

template < class T >
void Tree< T >::rotateRight( Node< T >** root ) {
    Node< T >* node = ( *root )->left;
    ( *root )->left = node->right;

    node->right = *root;

    ( *root )->height =
        compare( heightNode( ( *root )->left ), heightNode( ( *root )->right ) ) + 1;
    node->height = compare( heightNode( node->left ), ( *root )->height ) + 1;

    *root = node;
}

template < class T >
void Tree< T >::doubleRotateLeft( Node< T >** root ) {
    if( *root == nullptr ) {
        return;
    }

    rotateRight( &( *root )->right );
    rotateLeft( root );
}

template < class T >
void Tree< T >::doubleRotateRight( Node< T >** root ) {
    if( *root == nullptr ) {
        return;
    }

    rotateLeft( &( *root )->left );
    rotateRight( root );
}

template < class T >
int Tree< T >::factor( Node< T >* node ) {
    return abs( heightNode( node->left ) - heightNode( node->right ) );
}

int compare( const int left, const int right ) {
    if( left > right ) {
        return left;
    } else {
        return right;
    }
}

template < class T >
int heightNode( Node< T >* node ) {
    if( node == nullptr ) {
        return -1;
    } else {
        return node->height;
    }
}

template < class T >
Node< T >* searchSmallerNode( Node< T >* node ) {
    Node< T >* tmp = node;
    while( tmp->left != nullptr ) {
        tmp = tmp->left;
    }

    return tmp;
}

#endif