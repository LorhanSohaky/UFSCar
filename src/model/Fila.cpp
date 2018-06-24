#include "../../include/Fila.hpp"

Fila::Fila() {
    primeiro = ultimo = nullptr;
    cont              = 0;
}

Fila::~Fila() {
    Node* temp;
    while( primeiro != nullptr ) {
        temp = primeiro->next;
        delete primeiro;
        primeiro = temp;
    }
}

bool Fila::Vazia() const {
    return primeiro == nullptr && ultimo == nullptr;
}

void Fila::Insere( Lanche* vinfo ) {
    Node* aux = new Node;
    aux->info = vinfo;
    aux->next = nullptr;
    cont++;

    if( this->Vazia() ) {
        primeiro     = aux;
        ultimo       = primeiro;
        ultimo->next = primeiro;
    } else {
        ultimo->next = aux;
        ultimo       = aux;
    }
}

Lanche* Fila::Retira() {
    Lanche* info;
    Node* temp = new Node;

    if( !this->Vazia() ) {
        info     = primeiro->info;
        temp     = primeiro;
        primeiro = primeiro->next;
        cont--;
        delete temp;
        return info;
    } else
        return 0;
}

void Fila::draw( sf::RenderTarget& target, sf::RenderStates states ) const {
    Node* tmp = primeiro;
    while( tmp != nullptr ) {
        target.draw( *tmp->info, states );
        tmp = tmp->next;
    }
}

void Fila::move( float x, float y ) {
    Node* tmp = primeiro;
    while( tmp != nullptr ) {
        tmp->info->move( x, y );
        tmp = tmp->next;
    }
}
