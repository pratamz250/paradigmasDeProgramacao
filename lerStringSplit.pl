main :-
	read_string(user_input, "\n", "\n", _, S) ,
	split_string(S, " ", " ", L) ,
	writeln(L).
