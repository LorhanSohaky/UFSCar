#ifndef PILHA_HPP

#define PILHA_HPP

#include <stdexcept>

class ExcecaoPilha : public std::runtime_error {
  public:
    ExcecaoPilha( const std::string& message )
        : std::runtime_error( message ) {
    }
};

template < class T >
class Pilha {
  public:
    Pilha( const int tamanho );
    ~Pilha();

    bool isVazia() const;
    bool isCheia() const;
    int getTamanho() const;

    void empilhar( const T elemento );
    T desempilhar();

  private:
    int tamanho;
    int topo;

    T* vetor;
};

#include "../model/Pilha.cpp"

#endif
