pred_for(X, N) :-
	N < X.
pred_for(X, N) :-
	N >= X ,
	write(N) ,
	write(' ') ,
	N1 is N - 1 ,
	pred_for(X, N1).

main :-
	read_string(user_input, "\n", "\n", _, Nstr) ,
	number_string(N, Nstr) ,
	pred_for(0, N).
