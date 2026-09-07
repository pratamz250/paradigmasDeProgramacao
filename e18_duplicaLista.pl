duplicar([], X) :-
	write(X).

duplicar([H|T], X) :-
	X = H , duplicar(T, X).	
