ultimo([X]) :-
	write(X) , !.
ultimo([_|T]) :-
	ultimo(T).
