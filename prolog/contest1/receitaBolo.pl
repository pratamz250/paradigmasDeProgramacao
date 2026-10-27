main :-
	read_string(user_input, "\n", "\n", _, S) ,
	split_string(S, " ", " ", L) ,
	maplist(number_string, [A, B, C], L) ,

	FA is A//2 ,
	OV is B//3 ,
	LE is C//5,

	min_list([FA, OV, LE], X) ,
	writeln(X).
