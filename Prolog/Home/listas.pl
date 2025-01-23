% um elemento pertence a uma lista

pertence(X,[X|_]).
pertence(X,[_|T]) :- pertence(X,T).


% um elemento é o ultimo elemento de uma lista

lastElement(X,[X]).
lastElement(X,[_|T]) :- lastElement(X,T).

% verificar elementos consecutivos

consecutivos(X,Y,[A,B|_]) :- X=A,Y=B.
consecutivos(X,Y,[_|Lista]) :- consecutivos(X,Y,Lista).

% retorne o tamanho de uma lista

listSize([],0).
listSize([_|Lista],Tam) :- listSize(Lista,Tam1), Tam is Tam1+1.
