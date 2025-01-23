maior([],_).
maior([H|T], R) :- ( H>R -> R = H, maior(T,R); maior(T,R)).

maior_element([H|T], R) :- maior(T,H), R = H.