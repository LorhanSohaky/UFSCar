#include <iostream>
#include <string>

using namespace std;

typedef struct {
    String nome;
    String cpf;
    float saldo;
} Conta;

int main() {
    Conta conta;

    init_conta( conta );

    return 0;
}
