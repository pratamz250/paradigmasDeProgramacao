conta(_, [], 0).

conta(X, [H|T], N) :-
	conta(X, T, R) , H == X , N is R+1.

conta(X, [H|T], N) :-
		conta(X, T, R) , H \== X , N is R.
