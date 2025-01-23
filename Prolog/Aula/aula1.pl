fala(ted, ingles).
fala(mary, ingles).
fala(tom, ingles).
fala(tom, russo).
fala(tom, portugues).
fala(mary, russo).

fala_com(Pessoa1, Pessoa2) :- fala(Pessoa1, X), fala(Pessoa2, X), Pessoa1 \= Pessoa2.
