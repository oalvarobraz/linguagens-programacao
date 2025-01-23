% Caso base:
inverter([], Invert, Invert).

% Regra recursiva: move o primeiro elemento da lista original para a lista invertida.
inverter([H|T], Invert, Result) :-
    inverter(T, [H|Invert], Result).

inverter_list(List, Result) :-
    inverter(List, [], Result).
