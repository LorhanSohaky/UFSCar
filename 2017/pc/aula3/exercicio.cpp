#include <iostream>
#include <string>

using namespace std;

typedef struct {
    string nome;
    string cpf;
    float saldo;
} Conta;

void init_conta( Conta &conta ) {
    cout << "Nome:";
    cin >> conta.nome;

    cout << "CPF:";
    cin >> conta.cpf;

    cout << "SALDO:";
    cin >> conta.saldo;
}

void print_conta( Conta &conta ) {
    cout << "NOME: " << conta.nome << '\n';
    cout << "CPF: " << conta.cpf << '\n';
    cout << "SALDO: " << conta.saldo << '\n';
}

float get_saldo( Conta &conta ) {
    return conta.saldo;
}

void set_saldo( Conta &conta ) {
    conta.saldo;
}
int main() {
    Conta conta;

    init_conta( conta );
    print_conta( conta );

    return 0;
}
