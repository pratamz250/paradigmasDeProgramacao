removeHeads([], []).
removeHeads([[_|T]|Rest], [T|NextRest]) :-
	removeHeads(Rest, NextRest).

printLine([]).
printLine([[H|_]]) :-
	write(H).
printLine([[H|_]|T]) :-
	write(H),
	write(" "),
	printLine(T).

printMatrix(_, 0, _).
printMatrix(Matrix, N, Count) :-
	N > 0,
	printLine(Matrix),
	nl,
	removeHeads(Matrix, NextMatrix),
	ItLines_printMatrix is Count + 1,
	ItN is N - 1,
	printMatrix(NextMatrix, ItN, ItLines_printMatrix).

buildIndividualList(_, Bigger, []) :-
	Bigger =< 0.
buildIndividualList(Element, Bigger, [H|T]) :-
	Bigger > 0,
	(
		Element < 0 ->
			H = 0, 
			Op is Element + 1
		;
			H = 1,
			Op is Element
	),
	It_buildIndividualList is Bigger - 1,
	buildIndividualList(Op, It_buildIndividualList, T).

rep([], _, []).
rep([H|T], Bigger, [M|N]) :-
	buildIndividualList(H, Bigger, M),
	rep(T, Bigger, N).

infoVector(0, _, _, []).
infoVector(N, [H|T], Bigger, [P|Q]) :-
	N > 0,
	P is H - Bigger,
	It_infoVector is N - 1,
	infoVector(It_infoVector, T, Bigger, Q).

main :-
	read_string(user_input, "\n", "\n", _, NStr),
	read_string(user_input, "\n", "\n", _, VStr),

	number_string(N, NStr),
	split_string(VStr, " ", " ", VChars),
	maplist(number_string, V, VChars),

	max_list(V, Bigger),

	infoVector(N, V, Bigger, VAux),
	
	rep(VAux, Bigger, Matrix),

	printMatrix(Matrix, Bigger, 0).
