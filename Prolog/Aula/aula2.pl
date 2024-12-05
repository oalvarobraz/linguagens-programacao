p([]). % Caso base
p([_,_|X]) :- p(X). % Connsumindo os dois primeiros elementos e fazer a recursão com a cauda