main :-
	read_line_to_string(user_input, S) ,
	number_string(Num, S) ,

	X is Num mod 2 ,

	( X =:= 0 -> 
	write("Par") ;
	write("Impar")
	) ,

	nl.
