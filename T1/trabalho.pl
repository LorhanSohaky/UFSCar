% A ideia do algoritmo para resolver este problema é:
% Para cada uma das listas executar:
%    normalizar(L1,Resultado) -> resultando numa lista sem sublistas e sem variáveis
% Pegando o resultado das execuções anterioes:
%    interseccao(L1,L2, LResultado) -> isso irá remover os itens que estão em ambas as listas, mas se um item aparecer mais de uma vez em somente uma delas, ele irá aparecer no resultado
%    removeRepeticao(Lista, Resultante) -> a partir de LResultado criar uma lista sem repetição
%    contar(Resultante,LResultado, Resultado) -> contar a quantidade de vezes em que um item apareceu na lista e resultar uma lista em pares [[item,quantidade],...]
concat([], L, L) :- !.
concat([X|Y], L, [X|Z]) :-
    concat(Y, L, Z).

normalize([], []) :- !.
normalize([X|Y], Z) :-
    is_list(X),
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