rep(N, Count, NewCount) :-
	N < 2 ,
	! ,
	NewCount = Count.
rep(N, Count, NewCount) :-
	N >= 2 ,
	Op is N / 2 ,
	NewCountAux is Count + 1 ,
	rep(Op, NewCountAux, NewCount).

main :-
	read_string(user_input, "\n", "\n", _, InStr) ,
	number_string(In, InStr) ,
	rep(In, 0, NewCount) ,
	Ans is 4 ^ NewCount ,
	writeln(Ans).
