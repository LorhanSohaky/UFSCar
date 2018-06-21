#ifndef FILA_HPP
#define FILA_HPP
#include <iostream>
using namespace std;

template <typename T>
class Node {
public:
    T info;
    Node<T>* next;
    Node(): next(nullptr){};
};

template <typename T>
class Fila {
    
private:
    Node<T> *primeiro;
    Node<T> *ultimo;
    int cont;

public:
    Fila();
    ~Fila();
    bool Vazia() const;
    void Insere(const T info);
    T Retira();
    void Deleta();
    void Print();
    
};

template <typename T>
Fila<T>::Fila(){
    primeiro = ultimo = nullptr;
    cont = 0;
}

#endif
