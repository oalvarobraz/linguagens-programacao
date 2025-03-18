-- funcoes de alta ordem
-- São aquelas que operam sobre outraas funções, ou seja, que podem receber outra função como argumento ou retornar uma função como resultado

dobra :: Int -> Int
dobra n = n + n

quadrado :: Int -> Int
quadrado n = n * n

mapInt :: (Int -> Int) -> [Int] -> [Int] --(Int -> Int) significa que vai receber uma função que tem como parametro Int->Int
mapInt _ [] = []
mapInt f (h:t) = f h : mapInt f t

filtro :: (Int -> Bool) -> [Int] -> [Int]
filtro _ [] = []
filtro f (h:t)
    | (f h) == True = h : filtro f t
    | otherwise = filtro f t

pares :: Int -> Bool
pares x = mod x 2 == 0

impares :: Int -> Bool
impares x = mod x 2 == 1