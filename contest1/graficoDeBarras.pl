creatingLists([H|T], M) :-
		

main :-
	read_string(user_input, "\n", "\n", _, Nstr) ,
	number_string(N, Nstr) ,

	read_string(user_input, "\n", "\n", _, Astr) , /*array as string*/
	split_string(Astr, " ", " ", Achars) , 		  /*array as chars*/
	maplist(number_string, A, Achars) , 		  /*array as numbers*/

	write(N) ,
	nl ,
	write(A) ,
	nl ,

	max_list(A, M) ,

	creatingLists(A, M).
