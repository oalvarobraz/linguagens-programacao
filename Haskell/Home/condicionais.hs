-- if-then-else

maior1 :: Int -> Int -> Int
maior1 a b = if a >= b then a else b

-- guardas, bastante similar ao switch-case, otherwise similar ao default
fatorial :: Int -> Int
fatorial n
    | n == 0 = 1
    | n > 0 = n * fatorial (n-1)

maior2 :: Int -> Int -> Int
maior2 a b
    | a > b = a
    | a < b = b
    | otherwise = 0

-- Exercícios
-- Escreva uma função que informa se um dado número é par
par :: Int -> Bool
par a = if mod a 2 == 0 then True else False

-- Escreva uma função em Haskell que recebe um caractere como parâmetro e verifica se ele é maiúsculo ou minúsculo
verifica :: Char -> String
verifica c
    | c >= 'a' && c <= 'z' || c == 'ç' = "Minusculo"
    | c >= 'A' && c <= 'Z' || c == 'Ç' = "Maiusculo"
    | otherwise = "Invalido"

-- Escreva uma função que receba 3 parâmetros: a,b,c
--  - Se a igual a 0 deve ser calculado a expressão: b^2 + 3*c
--  - Se a igual a 1, deve ser calculado a expressão: 2*c^2 - 3*c
--  - Se a igual a 2, deve ser calculado a expressão: 3*c - b^2
--  - para outros valores de a, deve retornar zero

funcao :: Int -> Int -> Int -> Int
funcao a b c 
    | a == 0 = b^2 + 3*c
    | a == 1 = 2*c^2 - 3*c
    | a == 2 = 3*c - b^2
    | otherwise = 0