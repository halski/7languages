father(zeb, john_boy_sr).
father(john_boy_sr, john_boy_jr).
father(john_boy_jr, kid).

ancestor(X, Y) :-
	father(X, Y).

ancestor(X, Y) :-
	father(X, Z), ancestor(Z, Y).
