main :-
	read_string(user_input, "\n", "\n", _, Sstr) ,

	split_string(Sstr, " ", " ", Schars) ,

	maplist(number_string, [T1, T2, T3, T4], Schars) ,

	Ans is ( (T1 - 1) + (T2 - 1) + (T3 - 1) + T4 ) ,

	write(Ans) ,
	nl.
