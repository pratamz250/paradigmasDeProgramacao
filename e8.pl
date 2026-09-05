gosta(joao, pizza).
gosta(joao, sushi).
gosta(maria, pizza).
gosta(pedro, hamburguer).

gosta_de_comida(X) :-
	gosta(X, pizza) ; gosta(X, sushi).

mesmo_gosto(X, Z) :-
	gosta(X, Y) , gosta(Z, Y).
