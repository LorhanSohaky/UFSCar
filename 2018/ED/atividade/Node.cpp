#ifdef NODE_HPP

template < class T >
Node< T >::Node( const int key, const T value, Node* const left, Node* const right ) {
    this->key    = key;
    this->value  = value;
    this->left   = left;
    this->right  = right;
    this->height = 0;
}

template < class T >
T Node< T >::getValue() const {
    return this->value;
}

template < class T >
int Node< T >::getKey() const {
    return this->key;
}

#endif