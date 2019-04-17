invert([],[]):-!.
invert([X,Y],[Y,X]):-!.

change([],[]):-!.
change([X|Y],[W|Z]):-invert(X,W), change(Y,Z).
