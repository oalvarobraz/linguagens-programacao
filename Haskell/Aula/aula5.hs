 -- Recebendo funções como argumeto
 aplicar :: (Double -> Double) -> [Double] -> [Double]
 aplicar _ [] = []
 aplicar f (n:ns) = (f n) : aplicar f ns

 multiplica2 :: Double -> [Double] -> [Double]
 multiplica2 m = aplicar ((*) m)

 -- função map, é uma função "aplicar" nativa do haskell
 -- função como map, que recebem outras funções como argumentos são funções de ordem superior

 -- multiplicaLista m = map ((*) m)
 -- a lista esta restringida, eu não preciso passar

 heads :: [[a]] -> [a]
 heads = map head

-- > heads [[1,2], [3,4]]
-- [1,3]

-- função filter
-- > filter (>3) [4,7,8,1,4]
-- [4,7,8,4]

-- função lambda: \x -> x + 1 é a mesma coisa que x = x + 1
-- map (\x -> x + 1) = map (+1) [1,2,3]

-- let lista = [(1,2),(3,4)]
-- map (\(a,b) -> a + b) lista

-- Como o map, os folds(dobras) são funções de ordem superior tmb
sum :: [Integer] -> Integer
sum [] = 0
sum (x:xs) = x + sum xs

concat :: [[a]] -> [a]
concat [] = []
concat (x:xs) = x ++ concat xs

-- todos esses exemplos mostram um padrão de recusão conhecido como fold
-- foldr (dobra a direita)
foldr :: (a -> b -> b) -> b -> [a] -> b -- O primeiro argumento de foldr é uma funçaõ com dois argumentos
foldr f acc [] = acc
foldr f acc (x:xs) = f x (foldr f acc xs)
-- foldr (/) 1 [2,3,4]
-- 2.666

-- foldl (/) 1 [2,3,4]
-- 0.04