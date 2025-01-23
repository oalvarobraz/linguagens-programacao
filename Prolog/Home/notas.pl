nota(joao,5.0).
nota(maria,6.0).
nota(joana,8.0).
nota(mariana,9.0).
nota(cleuza,8.5).
nota(jose,6.5).
nota(joaquim,4.5).
nota(mara,4.0).
nota(mary,10.0).

situacao(Aluno) :- nota(Aluno,Nota),(
                                       (Nota>=7.0, Nota=<10.0, write('Aprovado'));
                                       (Nota>=5.0,Nota<7.0, write('Recuperacao'));
                                       (Nota>=0.0,Nota<5.0, write('Reprovado'))
                                      ).
