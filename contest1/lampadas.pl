rep(0, [], _, _).
rep(N, [H|T], A, B) :-
	N > 0 ,

	(
		(H =:= 1 , A =:= 0) -> A = 1 
		; 
		(H =:= 1 , A =:= 1) -> A = 0
		;
		(H =:= 2 , A =:= 0 , B =:= 0) -> A = 1 , B = 1
		;
		(H =:= 2 , A =:= 1 , B =:= 0) -> A = 0 , B = 1
		;
		(H =:= 2 , A =:= 0 , B =:= 1) -> A = 1 , B = 0
		;
		(H =:= 2 , A =:= 1 , B =:= 1) -> A = 0 , B = 0
	) ,

	Index is N - 1 ,
	rep(Index, T, A, B).

main :-
	read_string(user_input, "\n", "\n", _, NStr) ,
	read_string(user_input, "\n", "\n", _, VStr) ,

	number_string(N, NStr) ,

	split_string(VStr, " ", " ", VChars) ,
	maplist(number_string, VInts, VChars) ,

	rep(N, VInts, A, B) ,	

	writeln(A) ,
	writeln(B).
