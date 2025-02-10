-- Escreva uma função que recebe uma lista de números e retorna o maior número da lista
maiorList :: Ord a => [a] -> a
maiorList [] = error "Lista vazia"
maiorList [x] = x
maiorList (h:t) = maior_aux h t
    where
        maior_aux a [] = a
        maior_aux a (h:t)
            | h >= a = maior_aux h t
            | otherwise = maior_aux a t

-- Escreva uma função que recebe uma lista de números e retorna uma lista com os números que são primos
primosList :: [Int] -> [Int]
primosList [] = []
primosList (h:t)
    | primo h = h : primosList t
    | otherwise = primosList t
    where
        primo :: Int -> Bool
        primo n = length [x | x <- [1 .. n], mod n x == 0] == 2

-- Escreva uma função que recebe uma lista de strings e retorna a concatenação de todas as strings
concatenaString :: [String] -> [Char]
concatenaString [] = ""
concatenaString (h:t) = h ++ concatenaString t

-- Escreva uma função que recebe uma lista de números e retorna uma lista com os números que são múltiplos de 3 ou 5
multiplos3ou5 [] = []
multiplos3ou5 (h:t)
    | mult3 h || mult5 h = h : multiplos3ou5 t
    | otherwise =  multiplos3ou5 t
    where
        mult3 :: Int -> Bool
        mult3 n = mod n 3 == 0
        mult5 :: Int -> Bool
        mult5 n = mod n 5 == 0

-- Escreva uma função que recebe uma lista de números e retorna a soma dos quadrados dos números pares
somaquadradospares :: Integral a => [a] -> a
somaquadradospares [] = 0
somaquadradospares (h:t)
    | mod h 2 == 0 = h*h + somaquadradospares t
    | otherwise = somaquadradospares t

-- Escreva uma função que recebe uma lista de números e retorna uma lista com os números que são palíndromos (números que são iguais quando lidos de trás para frente)numerosPalindromos :: [Int] -> [Int]
numerosPalindromos :: [Int] -> [Int]
numerosPalindromos [] = []
numerosPalindromos (h:t)
    | ehPalindromo h = h : numerosPalindromos t
    | otherwise = numerosPalindromos t
    where
        ehPalindromo :: Int -> Bool
        ehPalindromo n = show n == reverse (show n)

-- Escreva uma função que recebe uma lista de números e retorna uma lista com os números que são potências de 2
numerosPotencia2 :: [Int] -> [Int]
numerosPotencia2 [] = []
numerosPotencia2 (h:t)
    | potencia2 h 0 = h : numerosPotencia2 t
    | otherwise = numerosPotencia2 t
    where
        potencia2 :: Int -> Int -> Bool
        potencia2 x y
            | x > 2^y = potencia2 x (y+1)
            | x < 2^y = False
            | otherwise = True

-- Escreva uma função que recebe uma lista de números e retorna uma lista com os números que são quadrados perfeitos x = n^2
numerosQuadradosPerfeitos :: (Num a, Ord a) => [a] -> [a]
numerosQuadradosPerfeitos [] = []
numerosQuadradosPerfeitos (h:t)
    | quadradoPerfeito h 1 = h : numerosQuadradosPerfeitos t
    | otherwise = numerosQuadradosPerfeitos t
    where
        quadradoPerfeito :: (Num t, Ord t) => t -> t -> Bool
        quadradoPerfeito x y
            | x < y^2 = False
            | x > y^2 = quadradoPerfeito x (y+1)
            | otherwise = True

-- Faça uma função recursiva que calcule e retorne o N-ésimo termo da sequência Fibonacci. Alguns números desta sequência são: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89..
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

-- Crie uma função recursiva que receba um número inteiro positivo N e calcule o somatório dos números de 1 a N.
somatorioN :: Int -> Int
somatorioN 0 = 0
somatorioN n = n + somatorioN (n-1)

-- Escreva uma função recursiva que inverta ordem dos elementos presentes no vetor.
inverterList :: [a] -> [a]
inverterList [] = error "Lista vazia"
inverterList [x] = [x]
inverterList (h:t) = inverterList t ++ [h]

-- O máximo divisor comum dos inteiros x e y é o maior inteiro que é divisível por x e y. Escreva uma função recursiva mdc, que retorna o máximo divisor comum de x
-- e y. O mdc de x e y é definido como segue: se y é igual a 0, então mdc(x,y) é x; caso contrário, mdc(x,y) é mdc (y, x%y), onde % é o operador resto.
mdc :: Integer -> Integer -> Integer
mdc x y
    | y == 0 = x
    | otherwise = mdc y (mod x y)

-- Escreva uma função recursiva que determine quantas vezes um item K ocorre em um vetor N.
quantidadedeK :: (Num a, Eq t) => [t] -> t -> a
quantidadedeK [] _ = 0
quantidadedeK (h:t) a
    | h == a = 1 + quantidadedeK t a
    | otherwise = quantidadedeK t a

-- A multiplicação de dois números inteiros pode ser feita através de somas sucessivas. Proponha um algoritmo recursivo Multip_Rec(n1,n2) que calcule a multiplicação de dois inteiros.
multi_rec :: (Eq t1, Eq t2, Num t1, Num t2) => t1 -> t2 -> t1
multi_rec n1 n2
    | n1 == 0 || n2 == 0 = 0
    | otherwise = n1 + multi_rec n1 (n2-1) 

-- Retorne o número do meio de um vetor
meio :: [Double] -> Double
meio [a] = a
meio list = medio_aux (length list) list
    where
        medio_aux tam list
            | mod tam 2 == 0 = (med list (div tam 2 - 1) + med list (div tam 2)) / 2
            | otherwise = med list (div tam 2)

        med :: [Double] -> Int -> Double
        med (h:_) 0 = h
        med (_:t) n = med t (n-1)

-- Defina e implemente uma função triplo :: Num a => a -> a que recebe um número e retorna o seu triplo.
triplo :: Num a => a -> a
triplo x = 3 * x

-- Implemente a função ehImpar :: Int -> Bool que retorna True se um número for ímpar e False caso contrário.
ehImpar :: Int -> Bool
ehImpar x = mod x 2 == 1

-- Implemente a função potencia :: Integer -> Integer -> Integer que recebe dois números e retorna o primeiro elevado à potência do segundo.
potencia :: Integer -> Integer -> Integer
potencia x y = x^y

-- Implemente a função menorElemento :: Ord a => [a] -> a que retorna o menor elemento de uma lista. Não use minimum.
menorElemento :: Ord a => [a] -> a
menorElemento [] = error("Lista vazia")
menorElemento [x] = x
menorElemento (h:t) = menorAux h t
    where
        menorAux x [] = x
        menorAux x (h:t)
            | h <= x = menorAux h t
            | otherwise = menorAux x t

-- Implemente a função inserirOrdenado :: Ord a => a -> [a] -> [a] que insere um elemento em uma lista ordenada mantendo a ordem.
inserirOrdenado :: Ord a => a -> [a] -> [a]
inserirOrdenado elem [] = [elem]
inserirOrdenado elem (h:t)
    | elem <= h = [elem, h] ++ t
    | otherwise = [h] ++ inserirOrdenado elem t

-- Defina um tipo Forma que pode ser um Circulo (com um raio) ou um Retangulo (com base e altura). Implemente uma função area :: Forma -> Double que retorna a área da forma.
data Forma = Circulo Double | Retangulo Double Double  
area :: Forma -> Double  
area (Circulo r) = pi * r^2  
area (Retangulo b h) = b * h  

-- Implemente a função ehPrimo :: Integer -> Bool que verifica se um número é primo.
ehPrimo :: Integer -> Bool
ehPrimo n = length [x | x <- [1 .. n], mod n x == 0] == 2

-- Implemente a função interseccao :: Eq a => [a] -> [a] -> [a] que retorna a interseção de duas listas (os elementos comuns entre elas).
interseccao :: Eq a => [a] -> [a] -> [a]
interseccao [] _ = []
interseccao (h:t) l2
    | elem h l2 = h : interseccao t l2
    | otherwise = interseccao t l2
 
-- Implemente a função substituir :: Eq a => a -> a -> [a] -> [a] que substitui todas as ocorrências de um elemento por outro em uma lista.
substituir :: Eq a => a -> a -> [a] -> [a]
substituir elem subs [] = []
substituir elem subs (h:t)
    | h == elem = [subs] ++ substituir elem subs t
    | otherwise = [h] ++ substituir elem subs t

-- Defina uma função somaQuadrados que recebe uma lista de números e retorna a soma dos quadrados dos elementos da lista.
somaQuadrados :: Num a => [a] -> a
somaQuadrados [] = 0
somaQuadrados (h:t) = h*h + somaQuadrados t

-- Implemente uma função zipAlternado que recebe duas listas e intercala seus elementos de forma alternada. Se uma lista for maior, os elementos extras devem aparecer no final.
zipAlternado :: [a] -> [a] -> [a]
zipAlternado [] [] = []
zipAlternado [] list = list
zipAlternado list [] = list
zipAlternado (h1:t1) (h2:t2) = [h1,h2] ++ zipAlternado t1 t2

-- Crie uma função maioresQueMedia que recebe uma lista de números e retorna uma nova lista contendo apenas os números maiores que a média da lista original.
maioresQueMedia :: (Fractional a, Ord a) => [a] -> [a]
maioresQueMedia [] = []
maioresQueMedia xs = [x | x <- xs, x > media]
  where 
    media = sum xs / fromIntegral (length xs)

-- Escreva a função rotacionarEsq que recebe uma lista e um número n, e retorna a lista rotacionada n vezes para a esquerda.
rotacionarEsq :: Int -> [a] -> [a]
rotacionarEsq _ [] = []
rotacionarEsq n (h:t)
    | n == 0 = (h:t)
    | otherwise = (rotacionarEsq (n-1) (t ++ [h]))

-- Implemente a função ehSublista que recebe duas listas e retorna True se a primeira for uma sublista contínua da segunda.
ehSublista :: Eq a => [a] -> [a] -> Bool
ehSublista [] _ = True
ehSublista _ [] = False
ehSublista sub@(sh:st) lista@(h:t)
    | isPrefixOf sub lista = True
    | otherwise = ehSublista sub t
  where
    isPrefixOf [] _ = True
    isPrefixOf _ [] = False
    isPrefixOf (x:xs) (y:ys) = x == y && isPrefixOf xs ys
