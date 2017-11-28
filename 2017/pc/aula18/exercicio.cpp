#include <iostream>

using namespace std;

template <class T> class Lista {
  public:
    Lista( const int tamanho );
    ~Lista();

    int getTamanho() const;
    bool setValue( const T &value, const int posicao );

    T getValue( const int posicao ) const;

    template <class U> friend ostream &operator<<( ostream &saida, const Lista<U> &lista );

  private:
    int tamanho;
    T *lista;
};

template <class T> Lista<T>::Lista( const int tamanho ) {
    if( tamanho > 0 ) {
        this->tamanho = tamanho;
    } else {
        this->tamanho = 10;
    }
    lista = new T[this->tamanho];
}

template <class T> Lista<T>::~Lista() {
    delete[] lista;
}

template <class T> bool Lista<T>::setValue( const T &value, const int posicao ) {
    if( posicao >= 0 && posicao < tamanho ) {
        lista[posicao] = value;
        return true;
    }
    return false;
}

template <class T> T Lista<T>::getValue( const int posicao ) const {
    if( posicao >= 0 && posicao < tamanho ) {
        return lista[posicao];
    }
}

template <class T> int Lista<T>::getTamanho() const {
    return tamanho;
}

template <class T> ostream &operator<<( ostream &saida, const Lista<T> &lista ) {
    for( int i = 0; i < lista.tamanho; i++ ) {
        saida << lista.lista[i] << "\t";
    }
    return saida;
}

int main( int argc, char const *argv[] ) {
    Lista<int> l = ( 2 );
    l.setValue( 100, 1 );
    l.setValue( 200, 0 );
    std::cout << l << '\n';
    return 0;
}
