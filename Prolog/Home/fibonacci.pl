fibonacci(1, 1).
fibonacci(2, 1).
fibonacci(N, Resultado) :- N > 2,
                           N1 is N-1,
                           N2 is N-2,
                           fibonacci(N1, R1),
                           fibonacci(N2, R2),
                           Resultado is R1 + R2.
