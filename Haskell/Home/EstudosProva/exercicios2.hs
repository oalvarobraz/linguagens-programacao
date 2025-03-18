ehPar :: Integer -> Bool
ehPar x = mod x 2 == 0

quadrado :: Num a => a -> a
quadrado x = x ^ 2

fatorial :: Integer -> Integer
fatorial x
    | x == 0 = 1
    | otherwise = x * fatorial (x-1)

somaN :: Integer -> Integer
somaN n
    | n == 0 = 0
    | otherwise = n + somaN (n-1)

fibonacci :: Integer -> Integer
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

contaElementos :: [a] -> Int
contaElementos [] = 0
contaElementos (_:t) = 1 + contaElementos t

reverter :: [a] -> [a]
reverter [] = []
reverter [x] = [x]
reverter (h:t) = reverter t ++ [h]

produtoLista :: [Integer] -> Integer
produtoLista [] = 1
produtoLista (h:t) = h * produtoLista t

somaImpares :: [Integer] -> Integer
somaImpares [] = 0
somaImpares (h:t)
    | ehImpar h = h + somaImpares t
    | otherwise = somaImpares t
    where
        ehImpar :: Integer -> Bool
        ehImpar x = mod x 2 == 1

contaOcorrencias :: Eq a => a -> [a] -> Int
contaOcorrencias n [] = 0
contaOcorrencias n (h:t)
    | n == h = 1 + contaOcorrencias n t
    | otherwise = contaOcorrencias n t

removeElemento :: Eq a => a -> [a] -> [a]
removeElemento n [] = []
removeElemento n (h:t)
    | n == h = removeElemento n t
    | otherwise = [h] ++ removeElemento n t

duplicarElementos :: [a] -> [a]
duplicarElementos [] = []
duplicarElementos (h:t) = [h,h] ++ duplicarElementos t

intercalar :: [a] -> [a] -> [a]
intercalar [] [] = []
intercalar list1 [] = list1
intercalar [] list2 = list2
intercalar (h1:t1) (h2:t2) = [h1,h2] ++ intercalar t1 t2

mediaLista :: [Double] -> Double
mediaLista [] = 0
mediaLista lista@(h:t) = (h + sum t)/tam lista
    where
        tam :: Num b => [a] -> b
        tam [] = 0
        tam (h:t) = 1 + tam t
        sum :: Num a => [a] -> a
        sum [] = 0
        sum (h:t) = h + sum t

filtrarPares :: [Integer] -> [Integer]
filtrarPares [] = []
filtrarPares (h:t) 
    | ehPar h   = h : filtrarPares t
    | otherwise = filtrarPares t
  where
    ehPar :: Integer -> Bool
    ehPar x = mod x 2 == 0

concatenaListas :: [a] -> [a] -> [a]
concatenaListas lista1 lista2 = lista1 ++ lista2

ultimoElemento :: [a] -> a
ultimoElemento [] = error "Lista vazia"
ultimoElemento [x] = x
ultimoElemento (h:t) = ultimoElemento t

maximoLista :: [Integer] -> Integer
maximoLista [] = error "Lista vazia"
maximoLista [x] = x
maximoLista (h:t) = maximoAux h t
    where
        maximoAux :: Integer -> [Integer] -> Integer
        maximoAux maior [] = maior
        maximoAux maior (h:t)
            | h >= maior = maximoAux h t
            | otherwise = maximoAux maior t

ehPalindromo :: Eq a => [a] -> Bool
ehPalindromo [] = True
ehPalindromo [_] = True
ehPalindromo (h:t)
    | h == last t = ehPalindromo (init t) 
    | otherwise = False
     where
          last :: [a] -> a
          last [x] = x
          last (h:t) = last t
          init :: [a] -> [a]
          init [x] = []
          init (h:t) = h : init t

repetirElemento :: a -> Int -> [a]
repetirElemento elem 0 = []
repetirElemento elem n = elem : repetirElemento elem (n-1)

rotacionarLista :: Int -> [a] -> [a]
rotacionarLista n [] = []
rotacionarLista 0 lista = lista
rotacionarLista n (h:t) = (rotacionarLista (n-1) (t ++ [h]))

comprimirLista :: Eq a => [a] -> [(a, Int)]
comprimirLista [] = []
comprimirLista (h:t) = (h, contarElementos h (h:t)) : comprimirLista (removerElementos (h:t) h)
    where
        contarElementos :: Eq a => a -> [a] -> Int
        contarElementos _ [] = 0
        contarElementos a (h:t)
            | h == a = 1 + contarElementos a t
            | otherwise = contarElementos a t
        removerElementos :: Eq a => [a] -> a -> [a]
        removerElementos [] _ = []
        removerElementos (h:t) a
            | h == a = removerElementos t a
            | otherwise = h : removerElementos t a