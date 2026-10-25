main :- 
	read_string(user_input, "\n", "\n", _, EStr) ,
	read_string(user_input, "\n", "\n", _, SStr) ,
	read_string(user_input, "\n", "\n", _, LStr) ,
	
	number_string(E, EStr) ,
	number_string(S, SStr) ,
	number_string(L, LStr) ,
	
	Op1 is abs(E - L) + abs(L - S) + abs(S - E) ,
	Op2 is abs(E - S) + abs(S - L) + abs(L - E) ,

	Dist = [Op1, Op2] ,
	
	min_list(Dist, Ans) ,
	writeln(Ans).