insert(X,[],[X]):-!.
insert(X,[Y|Z],[X,Y|Z]):-X=<Y,!.
insert(X,[Y|Z],[Y|W]):-insert(X,Z,W).
