check(_, [], 0).
check(Current, [H|T], Info) :-
	(
		Current =< H ->
		Info is 1 ;
		check(Current, T, Info)
	).

solve([], 0).
solve([H|T], Count) :-
	check(H, T, Info) ,
	solve(T, Aux) ,
	Count is Info + Aux.

main :-
	read_string(user_input, "\n", "\n", _, Nstr) ,
	number_string(N, Nstr) ,

	read_string(user_input, "\n", "\n", _, Asstr) , /*vector As*/
	split_string(Asstr, " ", " ", Aschars) ,
	maplist(number_string, As, Aschars) ,

	solve(As, Count) ,
	writeln(Count).
