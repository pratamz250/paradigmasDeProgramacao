solve(E, D) :-
	E < D ,

	Ans is 2*(D - E) ,
	write(Ans) ,
	nl.

solve(E, D) :-
	E > D ,

	Ans is E + D ,
	write(Ans) ,
	nl.

main :-
	read_string(user_input, "\n", "\n", _, Estr) ,
	read_string(user_input, "\n", "\n", _, Dstr) ,

	number_string(E, Estr) ,
	number_string(D, Dstr) ,

	solve(E, D).
