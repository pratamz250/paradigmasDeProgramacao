main :-
	read_string(user_input, "\n", "\n", _, N1Str) ,
	read_string(user_input, "\n", "\n", _, N2Str) ,
	read_string(user_input, "\n", "\n", _, N3Str) ,

	number_string(N1, N1Str) ,
	number_string(N2, N2Str) ,
	number_string(N3, N3Str) ,

	L = [N1, N2, N3] ,

	msort(L, LSorted) ,

	nth0(1, LSorted, Ans) ,

	writeln(Ans).
