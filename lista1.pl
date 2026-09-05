tamanho([], 0).

tamanho([_|T], N) :-
	tamanho(T, M) , 
	N is M + 1.
