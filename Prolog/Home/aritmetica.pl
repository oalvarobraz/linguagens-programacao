maiorQueCem() :- write('Entree com o n�mero: '),
                 read(X),
                 (
                 (X>100, write('O n�mreo � maior que cem'));
                 (X=<100, write('O n�mero � menor ou igual a cem'))
                 ).

