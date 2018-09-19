#ifdef PILHA_HPP

template < class T >
Pilha< T >::Pilha( const int tamanho ) {
    if( !( tamanho > 0 ) ) {
        throw ExcecaoPilha( "Tamanho inválido" );
    }

    topo = -1;

    this->tamanho = tamanho;
    vetor         = new T[ tamanho ];
}

template < class T >
Pilha< T >::~Pilha() {
    delete[] vetor;
}

template < class T >
bool Pilha< T >::isVazia() const {
    return topo == -1;
}

template < class T >
bool Pilha< T >::isCheia() const {
    return topo == tamanho - 1;
}

template < class T >
int Pilha< T >::getTamanho() const {
    return topo + 1;
}

template < class T >
void Pilha< T >::empilhar( const T elemento ) {
    if( isCheia() ) {
        throw ExcecaoPilha( "Pilha cheia" );
    }

    topo++;
    vetor[ topo ] = elemento;
}

template < class T >
T Pilha< T >::desempilhar() {
    if( isVazia() ) {
        throw ExcecaoPilha( "Pilha vazia" );
    }

    topo--;

    return vetor[ topo + 1 ];
}

#endif
