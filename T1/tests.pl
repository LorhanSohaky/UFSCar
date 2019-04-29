:- begin_tests(lists).
:- use_module(library(lists)).

test(concat1) :-
    concat([1, 2], [3, 4], L),
    L==[1, 2, 3, 4].

test(concat2) :-
    concat([1, [2], 3], [3, 4], L),
    L==[1, [2], 3, 3, 4].

test(normalize1) :-
    normalize([1, [2], [3, [4]], 5, [6, [7, [8], 9]], 10], L),
    L==[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].

:- end_tests(lists).