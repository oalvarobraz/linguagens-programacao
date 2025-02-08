-- 1) Escreva a assinatura das seguintes funções:

-- dobro :: Num a => a -> a
-- dobro x = x * 2
-- primeiro :: (a, b) -> a
-- primeiro (x, y) = x
-- maiorQue10 :: (Ord a, Num a) => a -> Bool
-- maiorQue10 x = x > 10
-- somaLista :: Num a => [a] -> a
-- somaLista xs = sum xs

-- 2) Defina e implemente uma função chamada ehPar que recebe um número inteiro e retorna um booleano indicando se ele é par. Escreva a assinatura da função.
ehPar :: (Num a, Integral a) => a -> Bool
ehPar x = if mod x 2 == 0 then True else False

-- 3) Implemente uma função quadrado que recebe um número x e retorna x ao quadrado. Escreva a assinatura da função.
quadrado :: Num a => a -> a
quadrado x = x * x

-- 4) Implemente uma função recursiva fatorial :: Integer -> Integer que calcula o fatorial de um número.
fatorial :: Integer -> Integer
fatorial n
    | n == 0 = 1
    | otherwise = n * fatorial (n-1)

-- 5) Implemente uma função recursiva somaN :: Integer -> Integer que retorna a soma de todos os números de 1 até n.
somaN :: Integer -> Integer
somaN n
    | n == 0 = 0
    | otherwise = n + somaN (n-1)

-- 6) Implemente uma função recursiva fibonacci :: Integer -> Integer que calcula o n-ésimo termo da sequência de Fibonacci.
fibonacci :: Integer -> Integer
fibonacci n
    | n == 1 = 1
    | n == 2 = 1
    | otherwise = fibonacci(n-1) + fibonacci (n-2)

-- 7) Implemente uma função contaElementos :: [a] -> Int que conta quantos elementos há em uma lista. Não use length.
contaElementos :: [a] -> Int
contaElementos [] = 0
contaElementos (_:t) = 1 + contaElementos t

-- 8) Implemente uma função reverter :: [a] -> [a] que inverte uma lista. Não use reverse.
reverter :: [a] -> [a]
reverter [] = []
reverter [x] = [x]
reverter (h:t) = reverter t ++ [h]

-- 9) Defina um novo tipo chamado DiaSemana representando os dias da semana.
type DiaSemana = String

-- 10) Implemente a função ehFimDeSemana :: DiaSemana -> Bool que retorna True se for sábado ou domingo e False caso contrário.
ehFimDeSemana :: DiaSemana -> Bool
ehFimDeSemana dia
    | dia == "sábado" || dia == "domingo" = True
    | otherwise = False

-- 11) Implemente a função produtoLista :: [Integer] -> Integer que calcula o produto de todos os elementos de uma lista. Não use product.
produtoLista :: [Integer] -> Integer
produtoLista [] = 1
produtoLista (h:t) = h * produtoLista t

-- 12) Implemente a função recursiva elementoN :: [a] -> Int -> a que retorna o n-ésimo elemento de uma lista (o primeiro elemento tem índice 0). Caso o índice seja inválido, retorne um erro.
elementoN :: [a] -> Int -> a
elementoN (h:t) index
    | index >= tam (h:t) = error "Index maior que a lista"
    | index == 0 = h
    | otherwise = elementoN t (index - 1)
    where
        tam :: [a] -> Int
        tam [] = 0
        tam (h:t) = 1 + tam t

-- 13) Implemente a função somaImpares :: [Integer] -> Integer que recebe uma lista de inteiros e retorna a soma dos números ímpares.
somaImpares :: [Integer] -> Integer
somaImpares [] = 0
somaImpares (h:t)
    | ehImpar h = h + somaImpares t
    | otherwise = somaImpares t
    where
        ehImpar :: (Num a, Integral a) => a -> Bool
        ehImpar x = mod x 2 == 1

-- 14) Implemente a função contaOcorrencias :: Eq a => a -> [a] -> Int que conta quantas vezes um determinado elemento aparece em uma lista.
contaOcorrencias :: Eq a => a -> [a] -> Int
contaOcorrencias _ [] = 0
contaOcorrencias elem (h:t)
    | elem == h = 1 + contaOcorrencias elem t
    | otherwise = contaOcorrencias elem t

-- 15) Implemente a função removeElemento :: Eq a => a -> [a] -> [a] que remove todas as ocorrências de um elemento da lista.
removeElemento :: Eq a => a -> [a] -> [a]
removeElemento _ [] = []
removeElemento elem (h:t)
    | elem == h = removeElemento elem t
    | otherwise = [h] ++ removeElemento elem t

-- 16) Implemente a função duplicarElementos :: [a] -> [a] que duplica cada elemento da lista.
duplicarElementos :: [a] -> [a]
duplicarElementos [] = []
duplicarElementos (h:t) = [h,h] ++ duplicarElementos t

-- 17) Implemente a função intercalar :: [a] -> [a] -> [a] que intercala os elementos de duas listas. Se uma lista for maior que a outra, os elementos extras devem ser adicionados ao final.
intercalar :: [a] -> [a] -> [a]
intercalar [] list = list
intercalar list [] = list
intercalar (h1:t1) (h2:t2) = [h1,h2] ++ intercalar t1 t2

-- 18) Implemente a função removerDuplicatas :: Eq a => [a] -> [a] que remove elementos repetidos consecutivos de uma lista.
removerDuplicatas :: Eq a => [a] -> [a]
removerDuplicatas [] = []
removerDuplicatas (h:h2:t)
    | h == h2 = removerDuplicatas (h2:t)
    | otherwise = [h] ++ removerDuplicatas (h2:t) 