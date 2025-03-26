import Data.Char (ord, chr)
-- Implemente uma função ordenarPor :: Ord b => (a -> b) -> [a] -> [a] que ordene uma lista com base no resultado de uma função de transformação.

ordenarPor :: Ord b => (a -> b) -> [a] -> [a]
ordenarPor _ [] = []
ordenarPor f (h:t) = 
    ordenarPor f (filter (\x -> f x <= f h) t) ++ [h] ++ ordenarPor f (filter (\x -> f x > f h) t)

data Pessoa = Pessoa { nome :: String, idade :: Int } deriving (Eq, Ord, Show)
pessoas = [Pessoa "João" 30, Pessoa "Maria" 25, Pessoa "Carlos" 35]

-- Crie uma função que calcule a soma dos quadrados dos números ímpares em uma lista usando filter, map e foldl.
somaQuadradosImpares :: [Int] -> Int
somaQuadradosImpares lista = foldl (+) 0 $ map (^2) (filter odd lista)

-- Implemente uma função que que calcule o produto escalar de dois vetores representados como listas
-- produtor escalar de A e B, onde A = (x,y) e B = (w,z) é igual a x*w + y*z

produtoEscalar :: Num a => [a] -> [a] -> Maybe a
produtoEscalar v1 v2 = 
    if length v1 == length v2 
        then Just (produtoEscalarAux v1 v2) 
        else Nothing

produtoEscalarAux :: Num a => [a] -> [a] -> a
produtoEscalarAux [] [] = 0
produtoEscalarAux (x:xs) (w:ws) = x*w + produtoEscalarAux xs ws


-- Escreva uma função que transponha uma matriz (lista de listas), convertendo linhas em colunas.

transposta :: [[a]] -> [[a]]
transposta [] = []
transposta ([]:_) = []
transposta lista = (map head lista) : transposta (map tail lista)

-- Implemente a sequência de Fibonacci usando foldl ou foldr para gerar os primeiros n números.
fibonacci :: Int -> [Int]
fibonacci n = foldr (\_ acc -> (head acc + head (tail acc)):acc) [1, 1] [1..(n-2)]
    where
        takePenultimo :: [Int] -> Int
        takePenultimo (x:xs:[]) = x
        takePenultimo (x:xs) = takePenultimo xs

        takeUltimo :: [Int] -> Int
        takeUltimo [x] = x
        takeUltimo (x:xs) = takeUltimo xs

fibonacci2 :: Int -> [Int]
fibonacci2 n = foldr (\_ acc -> acc++[takePenultimo acc + takeUltimo acc]) [1, 1] [1..(n-2)]
    where
        takePenultimo :: [Int] -> Int
        takePenultimo (x:xs:[]) = x
        takePenultimo (x:xs) = takePenultimo xs

        takeUltimo :: [Int] -> Int
        takeUltimo [x] = x
        takeUltimo (x:xs) = takeUltimo xs

fibonacci3 :: Int -> [Int]
fibonacci3 n = foldl (\acc@(a:b:_) _ -> (a+b):acc) [1,1] [1..(n-2)]

-- Implemente uma função que aplique uma transformação apenas aos elementos que satisfaçam um predicado.

transformacao :: (a -> Bool) -> (a -> b) -> [a] -> [b]
transformacao pred f lista = map (f) (filter (pred) lista)

maiorElemento :: Ord a => [a] -> a
maiorElemento (h:t) = foldr (\x acc -> if x > acc then x else acc) h t


first3elements :: [a] -> [a]
first3elements [] = []
first3elements [x] = [x]
first3elements [x, x1] = [x, x1]
first3elements (x:x1:x2:_) = [x,x1,x2]

stringMaiuscula :: [String] -> [String]
stringMaiuscula = map (\x -> if ((ord (head x) >= ord('A')) && (ord (head x) <= ord('Z'))) then x else []) 

stringMaiusculaFilter :: [String] -> [String]
stringMaiusculaFilter = filter (\x -> (ord (head x) >= ord('A')) && (ord (head x) <= ord('Z')))

fatorial :: Int -> Int
fatorial n = foldr (*) 1 [1..n]


myfilter :: (a -> Bool) -> [a] -> [a]
myfilter f [] = []
myfilter f (x:xs) = if (f x) then x:myfilter f xs else myfilter f xs

divide :: Float -> Float -> Maybe Float
divide _ 0 = Nothing
divide x y = Just (x/y)

dividir x y = do
    result <- divide x y
    return (result * 2)


myTakeWhile :: (a -> Bool) -> [a] -> [a]
myTakeWhile _ [] = []
myTakeWhile p (x:xs) = if (p x) then x:myTakeWhile p xs else myTakeWhile p xs

myReverse :: [a] -> [a]
myReverse lista = foldl (\acc x -> x:acc) [] lista 

myConcat :: [[a]] -> [a]
myConcat = foldr (\x acc -> x ++ acc) []

safeDiv :: Float -> Float -> Maybe Float
safeDiv _ 0 = Nothing
safeDiv x y = Just (x / y)

elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' x (y:ys) = if x == y then True else elem' x ys

