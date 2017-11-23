Tarefa de: Lorhan Sohaky - 740951

# Como o programa funciona:
- Para adicionar novas figuras basta clicar dentro da janela.
- O tipo de figura é escolhido aleatóriamente.
- A cada 1 (um) segundo as figuras mudam de posição aleatóriamente.

# Como compilar:
Para compilar é necessário ter o [GTKmm](https://www.gtkmm.org/en/download.html) instalado na máquina.
Depois basta ir até o diretório da tarefa e executar o comando make, para assim estar executando o arquivo chamado Makefile.

# Como adicionar uma nova figura:
A figura deve ser colocada na pasta figuras. A nova figura deve seguir o mesmo padrão das classes existentes nesta pasta, ou seja, existir um 'NovaFigura.h' com a declaração da classe e pelo menos seus métodos construtor e o draw e o 'NovaFigura.cpp' com as definições dos métodos. Toda figura deve incluir o header da Figura e do GTKmm.
No arquivo 'MyArea.cpp' na função 'on_button_press_event' existe um random para sortear o tipo de figura, então deve-se acrescentar um a cada tipo de figura nova inclusa, também deve-se adicionar uma nova opção no switch.
Além disso deve-se modificar o arquivo Makefile incluindo a nova figura.
