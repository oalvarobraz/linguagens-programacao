p([]).
p([X|T]):- write(X), nl, p(T).