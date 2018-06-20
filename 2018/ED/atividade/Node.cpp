#ifdef NODE_HPP

template < class T >
Node< T >::Node( const T value, Node* const left, Node* const right ) {
    this->value = value;
    this->left  = left;
    this->right = right;
}

template < class T >
T Node< T >::getValue() const {
    return this->value;
}

#endif