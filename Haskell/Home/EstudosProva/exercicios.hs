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