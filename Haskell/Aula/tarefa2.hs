-- Alvaro Braz Cunha 21.1.8163

-- 1- O que são funções de ordem superior em Haskell? Dê um exemplo simples.
-- Funções de ordem superior são funções que recebem outras funções como argumento ou retornam funções como resultado.
-- Exemplo: map, filter, foldr, foldl, foldr1, foldl1, etc.

-- 2- Explique o funcionamento da função map. O que acontece ao aplicá-la na lista [1,2,3,4] com a função (2*)?
-- A função map é como se fosse uma função "aplicar" nativa do haskell. Ela recebe funções como argumento função e aplica elas em uma determinada lista
aplicar :: (Double -> Double) -> [Double] -> [Double]
aplicar _ [] = []
aplicar f (n:ns) = f n : aplicar f ns

-- 3- O que a função filter faz? Como usá-la para obter apenas os números pares de [1..10]?
-- A função especifica uma condição a ser aplicada à cada elemento de uma lista, retornando a lista filtrada
numerosPares :: [Integer]
numerosPares = filter even [1..10]

numerosPares2 :: [Integer]
numerosPares2 = filter (\x -> mod x 2 == 0) [1..10]

-- 4- Como a função foldr pode ser usada para calcular a soma dos elementos de uma lista?
somaElementos :: Num a => [a] -> a
somaElementos = foldr (+) 0

-- 5- Qual a diferença entre foldr e foldl? Dê um exemplo prático para ilustrar.
myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl f acc [] = acc
myFoldl f acc (x:xs) = myFoldl f (f acc x) xs

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr f acc [] = acc
myFoldr f acc (x:xs) = f x (myFoldr f acc xs)
-- o foldr faz a operação da direita para a esquerda, e ja foldl faz a operação da esquerda para a direita
-- Ex1.: myFoldr (/) 1 [2,4,6,8]  -- Resultado: 2 / (4 / (6 / (8 / 1))) = 0.375
-- Ex2.: myFoldl (/) 1 [2,4,6,8]  -- Resultado: (((1 / 2) / 4) / 6) / 8 = 0.0026041666666666665

-- 6- Escreva uma função usando map que transforme uma lista de strings em uma lista de seus respectivos comprimentos.
stringLenght :: Foldable t => [t Char] -> [Int]
stringLenght = map length

-- 7- Implemente a função all :: (a -> Bool) -> [a] -> Bool usando foldr.
myAll :: (a -> Bool) -> [a] -> Bool
myAll f = foldr (\x acc -> f x && acc) True

-- 8- Como você pode utilizar map e filter em conjunto para obter os quadrados dos números ímpares de 1 a 10?
quadradosImpares :: [Integer]
quadradosImpares = map (^2) (filter odd [1..10])

-- 9- Reescreva a função reverse usando foldl.
myReverse :: [a] -> [a]
myReverse = foldl (\acc x -> x : acc) []