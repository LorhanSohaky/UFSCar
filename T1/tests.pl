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


test(intersection1) :-
    intersection([0, 1, 2, 3, 4, 6], [1, 2, 3, 4, 5, 6], L),
    L==[1, 2, 3, 4, 6].

test(intersection2) :-
    intersection([1, 2, 3, 3, 3, 3, 4, 5, 6, 7], [1, 2, 3, 4, 5, 6], L),
    L==[1, 2, 3, 3, 3, 3, 4, 5, 6].

test(removeRepeated1) :-
    removeRepeated([1, 2, 2, 2, 2, 3, 3, 4, 5, 3, 3], L),
    write(L),
    L==[1, 2, 4, 5, 3].

:- end_tests(lists).