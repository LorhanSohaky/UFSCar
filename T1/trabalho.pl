concat([], L, L) :- !.
concat([X|Y], L, [X|Z]) :-
    concat(Y, L, Z).

normalize([], []) :- !.
normalize([X|Y], Z) :-
    is_list(X),
    concat(X, Y, L),
    normalize(L, Z), !.
normalize([X|Y], [X|Z]) :-
    normalize(Y, Z).