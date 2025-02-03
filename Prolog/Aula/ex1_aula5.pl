principal :-
    ler_arquivo('input.txt', Numeros),
    sum_list(Numeros, Sum),
    open('output.txt', write, F),
    write(F, Sum),
    close(F),
    write('Sum written to output.txt'), nl.

ler_arquivo(Arquivo, Numeros) :-
    open(Arquivo, read, File),
    ler_linhas(File, Numeros),
    close(File).

ler_linhas(File, [Numero | Resto]) :-
    read(File, Numero),
    Numero \= end_of_file,
    ler_linhas(File, Resto).
ler_linhas(_, []).

soma_lista([], 0).
soma_lista([H|T], Soma) :-
    soma_lista(T, R),
    Soma is H + R.

teste :-
    open('input.txt', read, File),
    read(File, Linha1),
    read(File, Linha2),
    close(File), write([Linha1, Linha2]),nl.
