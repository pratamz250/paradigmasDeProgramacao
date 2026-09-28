pred_for(X, S) :-
	X > S.
pred_for(X, S) :-
	X =< S ,
	write(X) ,
	write(' ') ,
	X1 is X + 1 ,
	pred_for(X1, S).

main :-
	read_string(user_input, "\n", "\n", _, Sstr) ,

	number_string(S, Sstr) ,

	pred_for(0, S).
