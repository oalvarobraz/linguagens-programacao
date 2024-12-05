% Base de fatos
mae(mary, tom).
mae(mary, ted).

mae(ana, mario).
mae(julia, told).

pai(told, tom).
pai(mario, ted).

pai(luis, mario).
pai(jhonathan, told).


% Regras
irmao(X, Y) :- pai(P, X), pai(P, Y), X \= Y.
irmao(X, Y) :- mae(M, X), mae(M, Y), X \= Y.

avo(Avo, Neto) :- pai(Avo, Pai), pai(Pai, Neto).
avo(Avo, Neto) :- pai(Avo, Mae), mae(Mae, Neto).

ava(Ava, Neto) :- mae(Ava, Pai), pai(Pai, Neto).
ava(Ava, Neto) :- mae(Ava, Mae), mae(Mae, Neto).
