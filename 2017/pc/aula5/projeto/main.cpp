#include "SmartWatch.h"

int main() {
    SmartWatch relogio( "Xiaomi", "Mi Band 2", 3, 10, 20, 90, 100, true );
    relogio.printDados();

    for( int i = 0; i < 10; i++ ) {
        relogio.incrementaPassos();
    }
    relogio.printDados();

    relogio.zerarPassos();
    relogio.printDados();

    return 0;
}
