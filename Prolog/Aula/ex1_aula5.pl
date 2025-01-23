principal :-
    write('Entre como uma lista de números separados por vírgula: Ex.: [1,2,3,4,5].'), nl,
    read(List),
    sum_list(List, Sum),
    open('output.txt', write, F),
    write(F, Sum),
    close(F),
    write('Sum written to output.txt'), nl.


soma_lista([], 0).
soma_lista([H|T], Soma) :-
    soma_lista(T, R),
    Soma is H + R.