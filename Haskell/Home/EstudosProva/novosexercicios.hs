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
