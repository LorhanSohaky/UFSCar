#include <iostream>
#include <string>

using namespace std;

typedef struct {
    String nome;
    String cpf;
    float saldo;
} Conta;

float get_saldo( Conta &conta ) {
    return conta.saldo;
}

void set_saldo( Conta &conta ) {
    conta.saldo;
}
int main() {
    Conta conta;

    init_conta( conta );

    return 0;
}
