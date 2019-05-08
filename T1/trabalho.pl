% A ideia do algoritmo para resolver este problema é:
% Para cada uma das listas executar:
%    normalizar(L1,Resultado) -> resultando numa lista sem sublistas e sem variáveis
% Pegando o resultado das execuções anterioes:
%    interseccao(L1,L2, LResultado) -> isso irá remover os itens que estão em ambas as listas, mas se um item aparecer mais de uma vez em somente uma delas, ele irá aparecer no resultado
%    minus(L1,LResultado,R1) -> R1 será tudo de L1 que não está em L2
%    minus(L2,LResultado,R2) -> R2 será tudo de L2 que não está em L1
%    append(R1,R2,R3) -> R3 será tudo que não está na intersecção de L1 com L2
%    removeRepeticao(Lista, Resultante) -> a partir de R3 criar uma lista sem repetição
%    contar(Resultante,LResultado, Resultado) -> contar a quantidade de vezes em que um item apareceu na lista e resultar uma lista em pares [[item,quantidade],...]
concat([], L, L) :- !.
concat([X|Y], L, [X|Z]) :-
    concat(Y, L, Z).

normalize([], []) :- !.
normalize([X|Y], Z) :-
    is_list(X),
    compound(X),
    concat(X, Y, L),
    normalize(L, Z), !.
normalize([X|Y], [X|Z]) :-
    not(var(X)),
    normalize(Y, Z), !.
normalize([_|Y], Z) :-
    normalize(Y, Z).

in(X, [X|_]) :- !.
in(X, [_|Y]) :-
    in(X, Y).

intersection([], _, []) :- !.
intersection([X|Y], Z, [X|W]) :-
    in(X, Z),
    intersection(Y, Z, W), !.
intersection([_|Y], Z, W) :-
    intersection(Y, Z, W).

removeRepeated([], []) :- !.
removeRepeated([X|Y], [X|Z]) :-
    not(in(X, Y)),
    removeRepeated(Y, Z), !.
removeRepeated([_|Y], Z) :-
    removeRepeated(Y, Z).

countItem(_, [], 0) :- !.
countItem(X, [X|Y], Z) :-
    countItem(X, Y, W),
    Z is W+1, !.
countItem(X, [_|Y], Z) :-
    countItem(X, Y, Z), !.

countList([], L2, []) :-
    is_list(L2), !.
countList([X|Y], L2, [[X, Z]|W]) :-
    countItem(X, L2, Z),
    countList(Y, L2, W), !.

minus([], _, []) :- !.
minus([X|Y], Z, [X|W]) :-
    not(member(X, Z)),
    minus(Y, Z, W), !.
minus([_|Y], Z, W) :-
    minus(Y, Z, W).

conta_atomos(L1, L2, Lout) :-
    normalize(L1, M1),
    normalize(L2, M2),
    intersection(M1, M2, N2),
    minus(M1, N2, O1),
    minus(M2, N2, O2),
    append(O1, O2, O3),
    removeRepeated(O3, P1),
    countList(P1, O3, Lout).