#ifndef FILA_HPP
#define FILA_HPP

#include "Lanche.hpp"

class Node {
  public:
    Lanche* info;
    Node* next;
    Node()
        : next( nullptr ){};
};

class Fila {
  private:
    Node* primeiro;
    Node* ultimo;
    int cont;

  public:
    Fila();
    ~Fila();
    bool Vazia() const;
    void Insere( Lanche* info );
    Lanche* Retira();
    void Deleta();
    void Print();
};

#endif
