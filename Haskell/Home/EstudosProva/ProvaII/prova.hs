-- Qual assinatura de uma função que recebe uma lista de inteiro e retorna inteiro
funcao :: [Int] -> Int
funcao [x] = x

somaImpares :: [Integer] -> Integer
somaImpares [] = 0
somaImpares (h:t)
    | ehImpar h = h + somaImpares t
    | otherwise = somaImpares t
    where
        ehImpar :: Integer -> Bool
        ehImpar x =  mod x 2 == 1