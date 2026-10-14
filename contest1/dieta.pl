solve(0, Acc, Acc) :- 
	!.
solve(N, Acc, Ans) :-
	N > 0 ,
	read_string(user_input, "\n", "\n", _, InStr) ,
	split_string(InStr, " ", " ", InChars) ,
	maplist(number_string, [P, G, C], InChars) ,

	NewP is P * 4 ,
	NewG is G * 9 ,
	NewC is C * 4 ,

	Calories is NewP + NewG + NewC ,
	NewAcc is Acc + Calories ,

	Index is N - 1 ,
	solve(Index, NewAcc, Ans).

main :-
	read_string(user_input, "\n", "\n", _, SStr) ,	
	split_string(SStr, " ", " ", SChars) ,
	maplist(number_string, [N, M], SChars) ,

	solve(N, 0, Acc) ,
	Ans is M - Acc ,
	writeln(Ans).
