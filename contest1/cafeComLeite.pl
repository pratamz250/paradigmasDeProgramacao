main :- 
	read_string(user_input, "\n", "\n", _, AStr) ,
	read_string(user_input, "\n", "\n", _, BStr) ,
	read_string(user_input, "\n", "\n", _, CStr) ,
	read_string(user_input, "\n", "\n", _, DStr) ,
	
	number_string(A, AStr) ,
	number_string(B, BStr) ,
	number_string(C, CStr) ,
	number_string(D, DStr) ,
	
	Cafe is C - D ,
	
	(
		Cafe >= A , Cafe =< B ->
		writeln("S")
		;
		writeln("N")
	).