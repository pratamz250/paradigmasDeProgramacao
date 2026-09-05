soma([], 0).
soma([H|T], S) :-
	soma(T, R) , S is H + R.	
