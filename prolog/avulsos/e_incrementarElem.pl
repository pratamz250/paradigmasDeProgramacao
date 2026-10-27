incrementaElem([], _, []).

incrementaElem([H|T], N, [H2|R]) :-
	H2 is H + N ,
	incrementaElem(T, N, R).
