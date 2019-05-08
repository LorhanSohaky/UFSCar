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

test(removeRepeated1) :-
    removeRepeated([1, 2, 2, 2, 2, 3, 3, 4, 5, 3, 3], L),
    L==[1, 2, 4, 5, 3].

test(countList1) :-
    countList([1, 2, 3, 4, 5], [1, 1, 1, 1, 1, 1, 2, 2, 2, 4, 1, 3, 6, 8, 4, 5, 7, 1, 3, 5], L),
    L==[[1, 8], [2, 3], [3, 2], [4, 2], [5, 2]].

test(minus1):-
    minus([1,2,3,4,5,6,3,1,10,4,3],[3,1,2,5,6,3,1,4,8],L),
    L==[10].

test(conta_atomos1) :-
    L1 = [a, b, Z,[a, x], [5,x], [x], par(c,d)],
    L2 = [4.6, 5, w, [], F, b, [], par(c,d), [], par(1,2)],
    conta_atomos(L1,L2, L3),
    nl(),
    write('L1 = '),
    write(L1),
    nl(),
    write('L2 = '),
    write(L2),
    nl(),
    write('resultado = '),
    write(L3),
    nl(),
    L3==[[a, 2], [x, 3], [4.6, 1],[w,1],[[], 3], [par(1,2), 1]].


test(conta_atomos2) :-
    L1 = [a, b, Z,[a,b, x], [5,x], [x], xxt(c,d)],
    L2 = [100, 5, w, [], F, b, [], x1t(casa,ads), [], acdc(1,2)],
    conta_atomos(L1,L2, L3),
    nl(),
    write('L1 = '),
    write(L1),
    nl(),
    write('L2 = '),
    write(L2),
    nl(),
    write('resultado = '),
    write(L3),
    nl(),
    L3==[[a,2],[x,3],[xxt(c,d),1],[100,1],[w,1],[x1t(casa,ads),1],[[],3],[acdc(1,2),1]].

:- end_tests(lists).
