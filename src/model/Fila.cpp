#include "../../include/fila.hpp"

template <typename T>
Fila<T>::~Fila(){
    Node<T> *temp;
    while(primeiro != nullptr){
     temp = primeiro->next;
     delete primeiro;
     primeiro = temp;
    }
}
    
template <typename T>
bool Fila<T>::Vazia() const{
    return primeiro == nullptr && ultimo == nullptr;
}

template <typename T>
void Fila<T>::Insere(const T vinfo){
    Node<T> *aux = new Node<T>;
    aux->info = vinfo;
    aux->next = nullptr;
    cont++;
        
    if(this->Vazia()){
        primeiro = aux;
        ultimo = primeiro;
        ultimo->next = primeiro;
    }
    else{
        ultimo->next = aux;
        ultimo = aux;
    }
}

template <typename T>
T Fila<T>::Retira(){
    T info;
    Node<T> *temp = new Node<T>;

    if(!this->Vazia()){
        info = primeiro->info;
        temp = primeiro;
        primeiro = primeiro->next;
        cont--;
        delete temp;
        return info;
    }
    else
       return 0;
}

template <typename T>
void Fila<T>::Print(){
    T aux;
    
    for(int i=0; i<cont; i++){
        aux = this->Retira();
        cout << aux << endl;
        Insere(aux);
    }
}
