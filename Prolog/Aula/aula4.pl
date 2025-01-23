% 1- Implemente uma regra em prolog chamada pares(L,P) que:
%   1) Recebe uma lista L de números.
%   2) Retorna ma lista P contendo apenas os números pares de L.

par(0).
par(N) :- N > 0, N2 is N -2, par(N2).

pares(L, P) :- pares_aux(L, [], P).

pares_aux([], P, P).
pares_aux([H|T], A, P) :- par(H), !, pares_aux(T, [H|A], P).
pares_aux([_|T], A, P) :- pares_aux(T, A, P).


% 2 - Escreva uma regra recursiva fatorial(N,F) que calcula o fatorial de um numero N.

fatorial(0, 1).
fatorial(N, F) :- N > 0, N1 is N - 1, fatorial(N1, F1), F is N*F1.

% 3 - Considere as seguintes fórmulas lógicas:
%   1. Av¬B
%   2. ¬Av¬BvC
%   3. AvBvC
%   4. ¬AvB
%   a) Identifique quais das fórmulas acima são cláulsas de Horn. Justifique a sua resposta


% 4 - Dadas as seguintes cláusulas
%   1. ¬A v ¬B v C
%   2. ¬C v D
%   3. E
%   a) Traduza essas cláusulas para a Sintaxe de Prolog


% 5 - Um zoológico possui as seguinte informações:
%   a. "Todos os passores têm penas".
%   b. "Se um animal é um pássaro ele pode voar, exceto se for um pinguim".
%   c. "Se um animal é um pinguim, ele não pode voar".
%   d. "Pedro é um penguim".
%   I) Escreva essas informações como cláusulas de Horn. 
%   II) Determine se Pedro pode voar usando raciocínio baseado em cláusulas de Horn.


% 6 - Dado o conjunto de Cláusulas
%   I. ¬P v Q
%   II. ¬Q v R
%   III. P
%   a) Resolva as cláusulas usando o método de resolução e determine o valor lógico de R.