#include "SmartWatch.h"
#include <string>

int main() {
    string nome = "Xiaomi";
    string modelo = "Mi Band 2";
    SmartWatch relogio( nome, modelo, 3, 10, 20, 90, 100, true );
    relogio.printDados();
    return 0;
}
