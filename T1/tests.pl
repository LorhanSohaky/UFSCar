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

test(removeVar1) :-
    removeVar([1,A,B,3,0,Z], L),
    L==[1,3,0].

test(removeVar2) :-
    removeVar([1,2,3,3,0,1], L),
    L==[1,2,3,3,0,1].

:- end_tests(lists).