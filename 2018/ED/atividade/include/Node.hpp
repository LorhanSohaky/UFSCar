#ifndef NODE_HPP
#define NODE_HPP

template < class T >
class Node {
  public:
    explicit Node( const int key, const T value, Node* const left, Node* const right );
    T getValue() const;
    int getKey() const;

    Node* left;
    Node* right;
    int height;

  private:
    int key;
    T value;
};

#include "../Node.cpp"

#endif