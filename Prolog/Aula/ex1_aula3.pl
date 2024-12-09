% if (p(X) and g(X)) then r(X) else g(X).

se(X) :- p(X), g(X), !, r(X).
se(X) :- g(X).
p(a).
g(a).
g(e).
r(a).

