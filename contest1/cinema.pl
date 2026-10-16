main :-
	read_string(user_input, "\n", "\n", _, AStr) ,
	read_string(user_input, "\n", "\n", _, BStr) ,

	number_string(A, AStr) ,
	number_string(B, BStr) ,

	(A =< 17 -> V1 = 15 ; A >= 18 , A =< 59 -> V1 = 30 ; A >= 60 -> V1 = 20) ,
	(B =< 17 -> V2 = 15 ; B >= 18 , B =< 59 -> V2 = 30 ; B >= 60 -> V2 = 20) ,

	Ans is V1 + V2 ,

	writeln(Ans).
