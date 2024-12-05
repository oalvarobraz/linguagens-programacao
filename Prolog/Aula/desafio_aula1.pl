estrada(a,b).
estrada(b,c).
estrada(c,d).
estrada(e,f).

viajar(Cidade1, Cidade2) :- estrada(Cidade1, Cidade2).
viajar(Cidade1, Cidade2) :- estrada(Cidade1, X), viajar(X, Cidade2).