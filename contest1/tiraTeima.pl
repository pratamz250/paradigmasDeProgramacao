solve(X, Y) :-
	( X < 0 ; X > 432 ; Y < 0 ; Y > 468 ) ,
	write("fora") ,
	nl ,
	!.

solve(_, _) :-
	write("dentro") ,
	nl.

main :-
	read_line_to_string(user_input, S) ,
	split_string(S, " ", " ", Parts) ,
	maplist(number_string, [X, Y] , Parts) ,

	solve(X, Y).
