count(X,[],0):-!.
count(X,[X|Y],Z):-count(X,Y,W), Z is W+1,!.
count(X,[Y|Z],W):-is_list(X),count(X,Y,M), count(X,Z,N), W is M+N,!.
count(X,[_|Y],Z):-count(X,Y,Z).
