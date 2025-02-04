-- Escreva uma função que recebe um número e retorna o dobro dele
dobro :: Int -> Int
dobro x = 2 * x

-- Escreva uma função que recebe dois números e retorna a soma deles
somar :: Int -> Int -> Int
somar a b = a + b

-- Escreva uma função que verifica se um número é par
ehpar :: Int -> Bool
ehpar x = mod x 2 == 0

-- Escreva uma função recursiva que calcula o fatorial de um número
fatorial :: Int -> Int
fatorial x
    | x == 0 = 1
    | otherwise = x * fatorial (x-1)

-- Escreva uma função recursiva que retorna o n-ésimo termo da sequência de Fibonacci
fibonacci :: Int -> Int
fibonacci n
    | n < 0 = error "Numero invalido"
    | n == 0 = 0
    | n == 1 = 1
    | n == 2 = 1
    | otherwise = fibonacci (n-1) + fibonacci (n-2)

-- Escreva uma função recursiva que conta quantos elementos existem em uma lista
tamLista :: [Int] -> Int
tamLista [] = 0
tamLista (h:t) = 1 + tamLista t

-- Escreva uma função que retorna o quadrado de cada elemento de uma lista
quadradoList :: [Int] -> [Int]
quadradoList [] = []
quadradoList (h:t) = h*h : quadradoList t

-- Escreva uma função que retorna apenas os números pares de uma lista
paresList :: [Int] -> [Int]
paresList [] = []
paresList (h:t)
    | par h = h : paresList t
    | otherwise = paresList t
    where
        par n = mod n 2 == 0

-- Escreva uma função que calcula a soma de todos os elementos de uma lista
sumList :: [Int] -> Int
sumList [] = 0
sumList (h:t) = h + sumList t

-- Utilize map para converter uma lista de temperaturas em Celsius para Fahrenheit
celsiusParaFahrenheit :: [Double] -> [Double]
celsiusParaFahrenheit celsius = map (\c -> c *(9/5) + 32) celsius

-- Utilize foldl para calcular o produto dos elementos de uma lista
produtoLista :: [Int] -> Int
produtoLista xs = foldl (\acc x -> acc * x) 1 xs

--  Escreva uma função que recebe uma tupla com dois números e retorna a soma deles
sumTuple :: (Int, Int) -> Int
sumTuple (a, b) = a + b

-- Escreva uma função que recebe uma lista de tuplas (nome, idade) e retorna apenas os nomes
type Pessoa = (String, Int)
retornaNome :: Pessoa -> String
retornaNome (nome, _) = nome

-- Escreva uma função que recebe uma tupla de três elementos e retorna o maior deles
maiorTupla :: (Int, Int, Int) -> Int
maiorTupla (a, b, c)
    | a >= b && a >= c = a
    | b >= a && b >= c = b
    | otherwise = c

-- Crie uma função que verifica se um número é múltiplo de 3
multiplode3 :: Int -> Bool
multiplode3 x = mod x 3 == 0

-- Crie uma função que recebe uma lista e retorna o último elemento
ultimoList :: [a] -> a
ultimoList [] = error "Lista vazia: não há último elemento."
ultimoList [x] = x
ultimoList (_:t) = ultimoList t

-- Crie uma função que recebe uma lista e retorna a lista sem o último elemento
removLastList :: [a] -> [a]
removLastList [] = error "Lista vazia: não há último elemento."
removLastList [x] = []
removLastList (h:t) = h : removLastList t

-- Crie uma função que verifica se uma lista está vazia
listempty :: [a] -> Bool
listempty list = if null list then True else False

-- Crie uma função que calcula a soma dos primeiros n números naturais
sumNatural :: Int -> Int
sumNatural n
    | n == 0 = 0
    | otherwise = n + sumNatural (n-1)

-- Crie uma função que inverte uma lista
invertList :: [a] -> [a]
invertList [] = error "Lista vazia"
invertList [x] = [x]
invertList (h:t) = invertList t ++ [h]

-- Crie uma função recursiva que verifica se um elemento está presente em uma lista
contemList :: Eq a => [a] -> a -> Bool
contemList [] _ = False
contemList (h:t) v
    | h == v = True 
    | otherwise = contemList t v

-- retornar penultimo elemento da lista
penultimoList :: Eq a => [a] -> a
penultimoList [] = error "Lista vazia: não há último elemento."
penultimoList [x] = error "Lista tem somente um elemento."
penultimoList (h:t)
    | proximoElement t == [] = h
    | otherwise = penultimoList t
    where
        proximoElement (h:t) = t
penultimo [a,b] = a
penultimo (h:t) = penultimo t

-- Descobrir o numero que está no meio da lista
media :: [Double] -> Double
media [a] = a
media list = media_aux (length list) list
    where
        media_aux tam list
            | mod tam 2 == 0 = (med list (div tam 2 - 1) + med list (div tam 2)) / 2
            | otherwise = med list (div tam 2)
        
        med :: [Double] -> Int -> Double
        med (h:_) 0 = h
        med (_:t) n = med t (n-1)

-- Escreva uma função que recebe uma lista de números e retorna uma lista de tuplas, onde cada tupla contém o número e o seu quadrado
retornaTuplas :: (Eq a, Num a) => [a] -> [(a, a)]
retornaTuplas [] = []
retornaTuplas (h:t) = (h, h * h) : retornaTuplas t

-- Escreva uma função que recebe uma lista de números e retorna a média dos elementos
mediaList :: (Eq a, Num a) => [a] -> Double
mediaList [] = 0
mediaList (h:t) = (h + mediaList t) / length (h:t)