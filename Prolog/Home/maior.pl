maior([X], X).
maior([H|T], M) :- maior(T, M1), M1 > H, M is M1.
maior([H|T], H) :- maior(T, M1), H >= M1.
