#ifndef NODE_HPP
#define NODE_HPP

template < class T >
class Node {
  public:
    explicit Node( const T value, Node* const left, Node* const right );
    T getValue() const;

    Node* left;
    Node* right;

  private:
    T value;
};

#include "../Node.cpp"

#endif