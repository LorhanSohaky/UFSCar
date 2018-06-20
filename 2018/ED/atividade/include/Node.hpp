#ifndef NODE_HPP
#define NODE_HPP

class Node {
  public:
    explicit Node( const int& value, Node* const left, Node* const right );
    int getValue() const;

    Node* left;
    Node* right;

  private:
    int value;
};

#endif