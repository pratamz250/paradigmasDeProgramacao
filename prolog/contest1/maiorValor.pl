solve(A, B, _) :-
	B < A ,
	write(-1) ,
	nl.

solve(A, B, C) :-
	B >= A ,

	number_string(B, Bstr) ,
	string_chars(Bstr, BListChars) ,
	maplist(atom_number, BListChars, ListInts) ,
	sum_list(ListInts, Sum) ,

	Sum =:= C,
	write(B) ,
	!.

solve(A, B, C) :-
	B >= A ,
	B1 is B - 1 ,
	solve(A, B1, C).

main :-
	read_string(user_input, "\n", "\n", _, Nstr) ,
	read_string(user_input, "\n", "\n", _, Mstr) ,
	read_string(user_input, "\n", "\n", _, Sstr) ,
		
	number_string(N, Nstr) ,
	number_string(M, Mstr) ,
	number_string(S, Sstr) ,

	solve(N, M, S).
