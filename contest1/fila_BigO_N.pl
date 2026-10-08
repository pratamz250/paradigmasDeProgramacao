solve([H], H, 0).
solve([H|T], Maior, Count) :-
	solve(T, MaiorT, Aux),

	(
		H =< MaiorT ->
		Count is Aux + 1 ;
		Count is Aux
	),

	Maior is max(H, MaiorT).

main :-
	read_string(user_input, "\n", "\n", _, Nstr) ,
	number_string(N, Nstr) ,

	read_string(user_input, "\n", "\n", _, Asstr) , /*vector As*/
	split_string(Asstr, " ", " ", Aschars) ,
	maplist(number_string, As, Aschars) ,

	solve(As, _, Count) ,
	writeln(Count).
