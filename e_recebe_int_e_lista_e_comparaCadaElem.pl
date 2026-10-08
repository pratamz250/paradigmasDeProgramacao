percorre([], 0).
percorre([H|T], Count) :-
	(
		(
			write(H) , 
			write(' ') ,
			(
				H =:= 200 ->
				write("sim ") ;
				write("nao ")
			)
		) , 
		percorre(T, Aux) ,
		Count is Aux + 1
	).

main :-
	read_string(user_input, "\n", "\n", _, Nstr) ,
	number_string(N, Nstr) ,

	read_string(user_input, "\n", "\n", _, Asstr) ,
	split_string(Asstr, " ", " ", Aschars) ,
	maplist(number_string, As, Aschars) ,

	write(N) ,
	nl ,
	write(As) ,
	nl ,

	percorre(As, Count) ,
	nl ,
	write(Count) ,
	nl.
