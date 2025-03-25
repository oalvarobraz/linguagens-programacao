-- 1. Faça um programa em haskell que ordene um vetor (ordem crescente).

ordenaVetor :: Ord a => [a] -> [a]
ordenaVetor [] = []
ordenaVetor (h:t) = ordenaVetor (filter (<= h) t) ++ [h] ++ ordenaVetor (filter (> h) t)

-- 2. Diga por que o código abaixo é inválido:
-- [[1,2],3,[4,5]]
-- As listas são coleções de elementos do mesmo tipo, com isso a definição inicial seria uma lista de listas, mas como temos um elementos 3 isso irá dar erro

-- 3. Use head e tail para escrever uma função que retorne o quinto elemento de uma lista.
quintoElemento :: [a] -> Maybe a
quintoElemento lista = quintoAux lista 0
    where 
        quintoAux [] _ = Nothing
        quintoAux lista 4 = Just (head lista)
        quintoAux lista n = quintoAux (tail lista) (n + 1)

-- 4. Escreva um código que peça para o usuário entrar com a base e a altura de um retângulo e que calcule sua área. Ele deve apresentar o resultado na tela.

data Forma = Retangulo Float Float

area :: Forma -> Float
area (Retangulo base altura) = base * altura

calcularAreaRetangulo :: IO ()
calcularAreaRetangulo = do
    putStrLn "Digite a base do retangulo"
    entradaBase <- getLine
    let base = read entradaBase :: Float
    
    putStrLn "Digite a altura do retangulo"
    entradaAltura <- getLine 
    let altura = read entradaAltura :: Float
    
    let retangulo = Retangulo base altura
    let resultado = area retangulo
    putStrLn ("A área do retângulo é: " ++ show resultado)

-- 5. Converta os seguintes comandos utilizando lambda:
-- map f xs ,onde f x = x * 1 + 2

funcaoLmabda = map (\x -> x*1 +2) [1,2,3]
funcaoLmabda2 = foldr (\x acc -> (x*1 + 2) : acc) [] [1, 2, 3]

-- 6. Use o comando foldl para definir uma função “reverso :: [a] -> [a]”, ele deverá retornar uma lista
-- de elementos na ordem inversa.

-- foldl f z [x1, x2, x3] = ((z `f` x1) `f` x2) `f` x3

-- foldr f z [x1, x2, x3] = x1 `f` (x2 `f` (x3 `f` z))

-- usando foldr
reversoFoldr :: [a] -> [a]
reversoFoldr = foldr (\x acc -> acc ++ [x]) []

-- usando foldl
reversoFoldl :: [a] -> [a]
reversoFoldl = foldl (\acc x -> x:acc) []

-- 7. Escreva uma função com dois argumentos x e n, na saída da função x deve ser replicado n vezes.
-- Exemplo: replica 3 10 = [10,10,10]

replica :: Int -> a -> [a]
replica 0 _ = []
replica x n = n : replica (x-1) n

replicaFoldr :: Int -> a -> [a]
replicaFoldr x n = foldr (\a acc -> n:acc) [] [1..x]

replicaFoldl :: Int -> a -> [a]
replicaFoldl x n = foldl (\acc a -> n:acc) [] [1..x]

-- 8. Escreva uma função que retorne os n primeiros elementos de uma lista. Ex:
-- Primeiros 2 [10,33,44,61,99] = [10,33]

primeiros :: Int -> [a] -> [a]
primeiros 0 _ = []
primeiros _ [] = []
primeiros n (h:t) = h:primeiros (n-1) t

primeirosFoldr :: Int -> [a] -> [a]
primeirosFoldr n lista = foldr (\x acc -> if length acc < n then x:acc else x:removeLast acc) [] lista
    where
        removeLast :: [a] -> [a]
        removeLast [] = []
        removeLast [x] = []
        removeLast (x:xs) = x:removeLast xs

primeirosFoldl :: Int -> [a] -> [a]
primeirosFoldl n lista = foldl (\acc x -> if length acc < n then acc++[x] else acc) [] lista

-- 9. Escreva uma função que ignore os n primeiros elementos de uma lista e retorne o restante. Ex:
-- ignore 2 [10,33,44,61,99] = [44,61,99]

ignore :: Int -> [a] -> [a]
ignore 0 lista = lista
ignore _ [] = []
ignore n (h:t) = ignore (n-1) t

ignoreFoldr :: Int -> [a] -> [a]
ignoreFoldr n = foldr (\x acc -> if length acc <= n then x:acc else acc) [] 

ignoreFoldl :: Int -> [a] -> [a]
ignoreFoldl n = foldl (\acc x -> if length acc <= n then acc++[x] else (removeFirst acc)++[x]) []
    where
        removeFirst :: [a] -> [a]
        removeFirst [] = []
        removeFirst [x] = []
        removeFirst (x:xs) = xs

-- 10. Os seguintes comandos são equivalentes?
-- (a) fmap (+2) Just 3


-- (b) (+2) <*> Just 3