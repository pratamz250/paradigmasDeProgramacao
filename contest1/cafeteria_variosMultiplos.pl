check(_, _, [], 0).

check(C, D, [H|T], Count) :-
	check(C, D, T, Aux) ,

	( 
		( (C - H) mod D) =:= 0 
		-> Count is Aux + 1 
		; Count is Aux 
	).

interval(M, B, []) :-
	M is B + 1 , 
	!.

interval(A, B, [A|T]) :-
	A =< B ,

	M is A + 1 ,

	interval(M, B, T).

main :-
	read_string(user_input, "\n", "\n", _, Astr) ,
	read_string(user_input, "\n", "\n", _, Bstr) ,
	read_string(user_input, "\n", "\n", _, Cstr) ,
	read_string(user_input, "\n", "\n", _, Dstr) ,

	number_string(A, Astr) ,
	number_string(B, Bstr) ,
	number_string(C, Cstr) ,
	number_string(D, Dstr) ,

	interval(A, B, L) ,

	check(C, D, L, Count) ,

	( Count is 0 -> write("N") ; write("S")  ) ,
	nl.
