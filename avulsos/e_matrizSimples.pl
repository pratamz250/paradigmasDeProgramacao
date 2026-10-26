printMatrix([]).

printMatrix([H|T]) :-
	write(H) ,
	nl ,
	printMatrix(T).
