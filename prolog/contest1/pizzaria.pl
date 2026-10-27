main :-
	read_string(user_input, "\n", "\n", _, Gstr) ,
	read_string(user_input, "\n", "\n", _, Pstr) ,

	number_string(G, Gstr) ,
	number_string(P, Pstr) ,

	Ans is (G * 8 + P * 4) - 2 ,

	write(Ans) ,
	nl.
