# Problema

Em algum lugar próximo de Redmond, Washington, há um barco a remo que é usado tanto por hakers linux quanto por funcionários da Microsoft (serfs) para atravessar um rio. Na travessia é primordial levar exatamente quatro pessoas, ou seja, a embarcação não vai sair da praia com mais ou menos de quatro pessooas.

Para garantir a segurança dos passageiros, não é permitido colocar um hacker juntamente com outros três funcionários no bote ou colocar um funcionário com três hackers; qualquer outra combinação é segura.

A cada entrada de _thread_ no bote, deve ser invocada uma função chamada `board`. Você deve garantir que as quatro _threads_ de cada tripulação do bote invoquem `board` antes de qualquer uma das _threads_ da tripulação seguinte.

Depois que todas as quatro _threads_ chamarem a função `board`, apenas um deles deve chamar uma função chamada `rowBoat`, assim indicando que aquela _thread_ assumirá os remos. Não importa qual _thread_ chame a função, contanto que que uma faça.

Não se preocupe com a direção da viagem. Suponha que estamos interessados somente no tráfego indo em uma das direções.