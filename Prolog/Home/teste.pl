:-dynamic mulher/1.
:-dynamic homem/1.
:-dynamic genitor/2.


start() :- write('Digite um valor para X'), nl,
           read(X),nl,
           write(X),nl.

mulher(pam).
mulher(ann).
mulher(liz).
mulher(pat).

homem(tom).
homem(bob).
homem(jim).

genitor(pam, bob).
genitor(tom, bob).
genitor(tom, liz).
genitor(bob, ann).
genitor(bob, pat).
genitor(pat, jim).

prole(X,Y) :- genitor(Y,X).
mae(X,Y) :- genitor(X,Y),mulher(X).
avos(X,Z) :- genitor(X,Y),genitor(Y,Z).

%assert/1 - acrescenta o fato/regra como �ltimo item do predicado;
%asserta/1 - acrescenta o fato/regra como primeiro item do predicado;

% retract/1 - remove da base de conhecimento a primaiera cl�usula (fato
% ou regra) que unifica com o termo que � passado como par�metro;
%
% retractall/1 - remove da bas de conhecimento todos os fatos ou regras
% cuja cl�usula (fato ou regra) unifique com o teermo que � passado como
% par�metro;


% sem a recurs�o
% descendente(X, Y) :- genitor(Y,X).
% descendente(X, Y) :- genitor(Y,Z),genitor(Z,X).
% descendente(X, Y) :- genitor(Y,Z),genitor(Z,W),genitor(W,X).

% Com recurs�o

descendente(X, Y) :- genitor(Y,X).
descendente(X, Y) :- genitor(Y,W),descendente(X,W).


