# ED-T2

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/03b1bf3f423c45b8bca50a92d006352a)](https://www.codacy.com/app/LorhanSohaky/ED-T2?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=LorhanSohaky/ED-T2&amp;utm_campaign=Badge_Grade)

Trabalho de estrutura de dados, utilizando a estrutura de lista. A estrutura inicial deste projeto foi retirada do [Default SFML Project](https://github.com/LorhanSohaky/DefaultSFMLProject).

### LICENSA
**MIT** [Leia a licença](LICENSE)


### DEPENDÊNCIAS
* SFML 2.5.0;
* g++ com suporte a C++14;
* Make;
* Code Blocks (opcional).

### AUTORES
* Fernanda Ferreira
* Lorhan Sohaky
* Sabrina Miranda

### PASTAS
* `src`: Contém os arquivos `.cpp`;
* `resources`: Contém as imagens, sons, músicas e fontes;
* `include`: Contém os arquivos `.hpp`;
* `bin`: Contém o executável;
* `obj`: Contém os arquivos objetos.

Obs: As pastas `obj` e `bin` não aparecem no git.

O projeto segue o padrão _MVC_. Então `src/controller` contém os arquivos controladores, `src/model` os arquivos modelos e `src/viewer` contém os arquivos de janela.


### ARQUIVOS
* Managers: Quando carrega um arquivo ele fica na memória, então para economizar memória há os managers que são uma coleção de ponteiros, ou seja, com a utilização dos managers os mesmos arquivos não são carregados várias vezes na memória;
* Game: Controla toda a dinâmica de mudança de janelas. Este controle é feito por meio de "máquinas de estados";
* Screen: É uma classe base para facilitar a criação das janelas;
* Collision: Verifica a colisão por teste simples (`GlobalBounds`) ou por teste avançado (`PerfectCollision`). Isto é feito para tornar a colisão mais real em figuras mais complexas;
* Makefile: Arquivo para facilitar a compilação. No Windows é feita a compilação estática, assim tornando mais fácil a execução do jogo;
* Config: Contém configurações do jogo, tais como título e tamanho da janela; além de configurações dos managers, como em qual pasta buscar os arquivos;
* Utils: Contém os parâmetros da "máquina de estado", como por exemplo qual é a próxima janela.

### PILHA
A estrutura pilha está sendo utilizada para empilhar os ingredientes que fazem parte do lanche, ou seja, se o lanche montado não corresponder com o lanche modelo o jogador perde.