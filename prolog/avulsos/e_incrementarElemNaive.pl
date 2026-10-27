soma([]).

soma([H|T]) :-
	X is H + 1 ,
	writeln(X) ,
	soma(T).
