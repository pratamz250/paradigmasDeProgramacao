main :-
	M = [[1,2,3],[4,5,6],[7,8,9]] ,

	nth0(1, M, Linha) ,
	nth0(2, Linha, E) ,

	write("Linha: ") ,
	write(Linha) ,
	nl ,
	write("Elemento: ") ,
	write(E) ,
	nl.
