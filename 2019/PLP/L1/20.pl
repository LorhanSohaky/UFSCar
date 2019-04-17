minN(X,Y,X):-X=<Y,!.
minN(X,Y,Y):-!.
minL([X],X):-!.
minL([X|Y],M):-minL(Y,Z),minN(X,Z,M).

removeE(X,[],[]):-!.
removeE(X,[X|Y],Y):-!.
removeE(X,[Z|Y],[Z|L]):-removeE(X,Y,L).

ordena([],[]):-!.
ordena(X,[W|Z]):-minL(X,W),removeE(W,X,M),ordena(M,Z).
