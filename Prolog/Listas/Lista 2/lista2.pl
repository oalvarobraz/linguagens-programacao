% Questão 1

mae(sue, nancy).
mae(sue, jeff).
mae(mary, sue).
mae(mary, bill).
pai(bill, ted).

irmao(X, Y) :- mae(Mae, X), mae(Mae, Y), X \= Y.
irmao(X, Y) :- pai(Pai, X), pai(Pai, Y), X \= Y.

avo(Avo, Neto) :- pai(Avo, Pai), pai(Pai, Neto).
avo(Avo, Neto) :- pai(Avo, Mae), mae(Mae, Neto).

ava(Ava, Neto) :- mae(Ava, Pai), pai(Pai, Neto).
ava(Ava, Neto) :- mae(Ava, Mae), mae(Mae, Neto).

primo(G, T) :- pai(PaiT, T), pai(PaiG, G), irmao(PaiT, PaiG).
primo(G, T) :- mae(MaeT, T), pai(PaiG, G), irmao(MaeT, PaiG).
primo(G, T) :- pai(PaiT, T), mae(MaeG, G), irmao(PaiT, MaeG).
primo(G, T) :- mae(MaeT, T), mae(MaeG, G), irmao(MaeT, MaeG).


% Questão 2
maior([], Max, Max).
maior([H|T], Acumulado, Max) :- (H > Acumulado -> NovoAcumulado = H; NovoAcumulado = Acumulado), 
    maior(T, NovoAcumulado, Max).

maior_element([H|T], Max) :-maior(T, H, Max).


menor([], Min, Min).
menor([H|T], Acumulado, Min) :- (H < Acumulado -> NovoAcumulado = H; NovoAcumulado = Acumulado),
    menor(T, NovoAcumulado, Min).

menor_element([H|T], Min) :- menor(T, H, Min).



% Questão 3: remover todas as duplicatas de uma lista

pertence([H|_], H).
pertence([_|T], Elemento) :- pertence(T, Elemento).

remove_duplicatas([], []).
remove_duplicatas([H|T], [H|Resposta]) :- \+ pertence(T, H), remove_duplicatas(T, Resposta).
remove_duplicatas([H|T], Resposta) :- pertence(T, H), remove_duplicatas(T, Resposta).


% Questão 4: Retorna uma lista que contenha somente uma instancia de cada átomo que é membro de sus listas de argumentos

intersection(L1, L2, R) :- intersection_helper(L1, L2, Temp), remove_duplicatas(Temp, R).

intersection_helper([], _, []).
intersection_helper([H1|T], L2, [H1|R]) :- pertence(L2, H1), intersection_helper(T, L2, R).
intersection_helper([_|T], L2, R) :- intersection_helper(T, L2, R).


% Questão 5: Retorna uma lista contendo a união dos elementos de duas listas

uniao([], L, L).
uniao([H|T], L2, [H|R]) :- \+ pertence(L2, H), uniao(T, L2, R).
uniao([H|T], L2, R) :- pertence(L2, H), uniao(T, L2, R).
