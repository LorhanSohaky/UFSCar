replace([],E1,E2,[]):-!.
replace([E1|X],E1,E2,[E2|Y]):-replace(X,E1,E2,Y),!.
replace([X|Y],E1,E2,[Z|W]):-is_list(X),replace(X,E1,E2,Z),replace(Y,E1,E2,W),!.
replace([X|Y],E1,E2,[X|Z]):-replace(Y,E1,E2,Z).
