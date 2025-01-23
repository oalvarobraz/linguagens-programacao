primo(X) :- X > 1, primo_aux(X, 2).

primo_aux(X, Aux) :- Aux * Aux > X.
primo_aux(X, Aux) :- 0 is X mod Aux, !, fail.
primo_aux(X, Aux) :- Aux1 is Aux + 1, primo_aux(X, Aux1).