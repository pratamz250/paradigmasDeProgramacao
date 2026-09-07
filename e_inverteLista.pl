inverte([]).

inverte([H|T]) :-
	inverte(T) , write(H).
