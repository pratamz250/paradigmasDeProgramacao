rep(0, [], A, B, A, B).
rep(N, [H|T], A0, B0, AFinal, BFinal) :-
	N > 0 ,
	(
		H =:= 1 ->
		A1 is 1 - A0 ,
		B1 = B0
		;
		H =:= 2 ->
		A1 is 1 - A0 ,
		B1 is 1 - B0
	) ,
	Index is N - 1 ,
	rep(Index, T, A1, B1, AFinal, BFinal).

main :-
	read_string(user_input, "\n", "\n", _, NStr) ,
	read_string(user_input, "\n", "\n", _, VStr) ,

	number_string(N, NStr) ,
	split_string(VStr, " ", " ", VChars) ,
	maplist(number_string, VInts, VChars) ,

	rep(N, VInts, 0, 0, A, B) ,

	writeln(A) ,
	writeln(B).
