print_row([]) :-
	nl.

print_row([H|T]) :-
	write(H) ,
	write(' ') ,

	print_row(T).

print_matrix([]).

print_matrix([H|T]) :-
	print_row(H) ,

	print_matrix(T).
