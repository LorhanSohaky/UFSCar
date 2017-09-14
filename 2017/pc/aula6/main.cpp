#include "Vetor.h"

int main( void ) {
    Vetor vet = Vetor( 5 );

    for( int i = 0; i < 5; i++ ) {
        vet.setValor( i, i + 1 );
    }

    vet.print();
    return 0;
}
