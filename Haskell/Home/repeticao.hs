divrec :: Int -> Int -> Int
divrec a b
    | b > a = a
    | b == a = 0
    | otherwise = divrec (a-b) b

-- Exercicios
-- Escreva uma função recursiva que receba como parâmetros dois número inteiros positivos, x e n, e retorne o resultado de x*n, realizando somas sucessivas
somarecursiva :: Int -> Int -> Int
somarecursiva x n
    | n == 0 = 0
    | x == 0 = 0
    | otherwise = x + somarecursiva x (n-1)

-- Escreva uma função recursa para o cálculo do MDC (máximo divisor comum) de dois números inteiros
mdc :: Int -> Int -> Int
mdc a b
    | a == b = a
    | a > b = mdc (a-b) b
    | otherwise = mdc b a


-- Recursão em Cauda
-- O resutlado da chama recursiva não precisa se processado de maneira alguma para produzir o resultado final
potencia2cauda :: Int -> Int -> Int
potencia2cauda n acumulado
    | n == 0 = acumulado
    | n > 0 = potencia2cauda (n-1) (2*acumulado)
-- A recursão é em cauda, pois a chamada recursiva é pura, ou seja, não precisa de cálculo adicional

factrec :: Int -> Int -> Int
factrec n acc
    | n ==0 = acc
    | n > 0 = factrec (n-1) (n*acc)

fibocauda :: Int -> Int -> Int -> Int
fibocauda n a1 a2
    | n == 0 = a1
    | n == 1 = a2
    | n > 1 = fibocauda (n-1) a2 (a1+a2)