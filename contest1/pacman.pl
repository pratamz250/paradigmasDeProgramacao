check('.', empty).
check('A', ghost).
check('o', food).

rep_eachList([], Acc, Best, Acc, Best).
rep_eachList([H|T], Acc, Best, Result, FinalBest) :-
	check(H, Type) ,
	(
		Type = food ->
		AuxAcc is Acc + 1 ,
		AuxBest is max(Best, AuxAcc)
		;
		Type = ghost ->
		AuxAcc = 0 ,
		AuxBest = Best
		;
		AuxAcc = Acc ,
		AuxBest = Best
	) ,
	rep_eachList(T, AuxAcc, AuxBest, Result, FinalBest).

rep_prossessing([], Acc, Best, Ans) :-
	Ans is max(Acc, Best).
rep_prossessing([H|T], Acc, Best, Ans) :-
	rep_eachList(H, Acc, Best, Result, NewBest) ,
	rep_prossessing(T, Result, NewBest, Ans).

readLists(H, Row) :-
	read_string(user_input, "\n", "\n", _, InStr) ,
	string_chars(InStr, Aux) ,
	(
		Row mod 2 =:= 0 ->
		reverse(Aux, H)
		;
		H = Aux
	).

rep_preprossessing(0, _, []) :- !.
rep_preprossessing(N, Row, [H|T]) :-
	N > 0 ,
	readLists(H, Row) ,
	Aux is N - 1 ,
	NextRow is Row + 1 ,
	rep_preprossessing(Aux, NextRow, T).

solve(N, Ans) :-
	rep_preprossessing(N, 1, Ls) ,
	rep_prossessing(Ls, 0, 0, Ans).

main :-
	read_string(user_input, "\n", "\n", _, Nstr) ,
	number_string(N, Nstr) ,
	solve(N, Ans) ,
	writeln(Ans).
