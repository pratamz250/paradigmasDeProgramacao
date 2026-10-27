solve(A, B, C, D) :-
	( (A =\= B + C + D) ; (D =\= B + C) ; (B =\= C) ) ,

	write("N") ,
	nl.

solve(A, B, C, D) :-
	( (A =:= B + C + D) , (D =:= B + C) , (B =:= C) ) ,

	write("S") ,
	nl.
	
main :-
	read_string(user_input, "\n", "\n", _, Astr) ,
	read_string(user_input, "\n", "\n", _, Bstr) ,
	read_string(user_input, "\n", "\n", _, Cstr) ,
	read_string(user_input, "\n", "\n", _, Dstr) ,

	number_string(A, Astr) ,
	number_string(B, Bstr) ,
	number_string(C, Cstr) ,
	number_string(D, Dstr) ,

	solve(A, B, C, D).
