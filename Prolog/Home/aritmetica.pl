maiorQueCem() :- write('Entree com o número: '),
                 read(X),
                 (
                 (X>100, write('O númreo é maior que cem'));
                 (X=<100, write('O número é menor ou igual a cem'))
                 ).

