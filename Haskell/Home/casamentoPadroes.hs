-- Casamento de padroes

padroes :: Int -> String
padroes 1 = "Um"
padroes 2 = "Dois"
padroes 3 = "Tres"
padroes x = "nao esta entre 1 e 3"

-- Defina quais serão as saida para as seguintes chamadas
padroes2 :: [Int] -> Int
padroes2 [] = 0
padroes2 (_:t) = 1 + padroes2 t

type Tupla4 = (Int, Int, Int, Int)
padroes3 :: Tupla4 -> String
padroes3 (_, _, _, fourth) | fourth > 10 = "Maior que 10."
                           | otherwise = "Nao maior que 10."

-- chamada:
-- padroes2 [x | x <- [1..100], mod x 2 == 0]
-- vai retornar a quantidade de número pares que existem entre 1 e 100, acredito que seja 50
-- padroes3 (100, 2, 35, 40)
-- vai retornar "Maior que 10"

f1 :: Int -> Int -> Int -> Int
f1 x y z | (x == 1) = 10
         | (y == 2) = 20
         | (z == 3) = 30
         | otherwise = 0

f2 :: Int -> Int -> Int -> Int
f2 1 _ _ = 10
f2 _ 2 _ = 20
f2 _ _ 3 = 30
f2 _ _ _ = 0

-- f1 e f2 realizam a mesma coisa