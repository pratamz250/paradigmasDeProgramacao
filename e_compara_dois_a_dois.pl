check(Current, [H|_], Flag) :-
	(
		Current < H ->
		Flag = 1 ;
		Flag = 0
	) ,
	!.

solve([], 0).
solve([_], 0).
solve([H|T], Count) :-
	(
		Current = H ,
		check(Current, T, Flag) ,
		solve(T, Aux) ,
		(
			Flag =:= 1 ->
			Count is Aux + 1 ;
			Count is Aux
		)
	).

main :-
	read_string(user_input, "\n", "\n", _, Nstr) ,
	number_string(N, Nstr) ,

	read_string(user_input, "\n", "\n", _, Asstr) ,
	split_string(Asstr, " ", " ", Aschars) ,
	maplist(number_string, As, Aschars) ,

	writeln(N) ,
	writeln(As) ,

	solve(As, Count) ,
	write(Count) ,
	nl.
