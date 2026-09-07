printa([]).

printa([H|T]) :-
	writeln(H) , printa(T).	
