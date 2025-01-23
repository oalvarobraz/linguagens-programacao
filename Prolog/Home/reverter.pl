append([], L, L).
append([H|T], L, [H|R]) :- append(T, L, R).

reverter([], []).
reverter([H|T], R) :- reverter(T, RevT), append(RevT, [H], R).
