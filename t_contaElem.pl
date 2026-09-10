conta([], _, 0).

conta([H|T], N, X) :-
	conta(T, N, R) ,
	H == N ,
	X is R + 1.

conta([H|T], N, X) :-
	conta(T, N, R) ,
	H \== N ,
	X is R.
