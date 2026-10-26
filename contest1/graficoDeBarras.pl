main :-
	read_string(user_input, "\n", "\n", _, NStr) ,
	read_string(user_input, "\n", "\n", _, VStr) ,

	number_string(N, NStr) ,
	split_string(VStr, " ", " ", VChars) ,
	maplist(number_string, V, VChars) ,

	max_list(V, Bigger) ,

	
