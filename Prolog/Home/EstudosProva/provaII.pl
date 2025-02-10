gosta(joao, pizza).
gosta(maria, sushi).
gosta(pedro, hamburguer).


mae(mary).
mae(any).
tia(mary).
tia(any).
filha_unica(X) :- \+ tia(X).

pertence(X, [X|_]).
pertence(X, [_|T]) :- pertence(X, T).

exercicio5:- read(X), Y is X * X, write(Y).

exercicio6:- open("numeros.txt", read, F),
             read(F, X1),
             read(F, X2),
             read(F, X3),
             S is X1 + X2 + X3,
             close(F),
             open("soma.txt", write, File),
             write(File, S),
             close(File).
        
exercicio7:- read(Lista),
             open('nomes.txt', write, Out),
             write(Out, Lista),
             close(Out).

pai(joao, maria).
pai(joao, pedro).
pai(carlos, ana).

casado(joao, maria).
casado(pedro, ana).
solteiro(X) :- \+ casado(X, _).
