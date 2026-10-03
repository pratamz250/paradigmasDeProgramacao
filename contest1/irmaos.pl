solve(A, B) :-
	C is 2*B - A ,
	write(C) ,
	nl.

main :-
	read_string(user_input, "\n", "\n", _, Astr) ,
	read_string(user_input, "\n", "\n", _, Bstr) ,

	number_string(A, Astr) ,
	number_string(B, Bstr) ,

	solve(A, B).
