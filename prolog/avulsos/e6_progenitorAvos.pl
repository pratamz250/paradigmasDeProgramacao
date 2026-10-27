pai(joao, maria).
pai(joao, pedro).
pai(pedro, ana).

mae(maria, ana).
mae(maria, carlos).

progenitor(X, Y) :-
	pai(X, Y) ; mae(X, Y).

avo(X, Z) :-
	(pai(X, Y) ; mae(X, Y)) , (pai(Y, Z) ; mae(Y, Z)).
