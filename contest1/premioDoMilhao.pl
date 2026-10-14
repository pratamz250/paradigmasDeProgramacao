solve(N, Acc, Limit, Count, Ans) :-
	N > 0 ,
	Acc < Limit ,
	read_string(user_input, "\n", "\n", _, Instr) ,
	number_string(In, Instr) ,
	NewAcc is Acc + In ,
	NewCount is Count + 1 ,
	(
		NewAcc >= Limit ->
		Ans = NewCount
		;
		Iterator is N - 1 ,
		solve(Iterator, NewAcc, Limit, NewCount, Ans)
	).

main :-
	read_string(user_input, "\n", "\n", _, Nstr) ,
	number_string(N, Nstr) ,
	Limit = 1000000 ,
	solve(N, 0, Limit, 0, Ans) ,
	writeln(Ans).
