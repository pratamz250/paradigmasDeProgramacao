pai(joao, maria).
pai(pedro, isaac).

mae(maria, isaac).
mae(ana, rosa).

avo(X, Z) :-
	(pai(X, Y) , pai(Y, Z)) ; (mae(X, Y) , mae(Y, Z)) ; (pai(X, Y) , mae(Y, Z)).
