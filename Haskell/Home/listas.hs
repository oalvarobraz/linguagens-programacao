-- Listas

listals = [[1,2],[3,4],[5,6]]
ls1 = [1.. 10]

-- 8:[] -- retorna [8] realiza a inserção do número 8 na lista

compr :: [Int] -> Int
compr [] = 0
compr (h:t) = 1 + compr t


cubo :: Int -> Int
cubo x = x * x * x

aocubo :: [Int] -> [Int]
aocubo [] = []
aocubo (h:t) = cubo (h) : aocubo t


raizes :: Float -> Float -> Float -> [Float]
raizes a b c
    | delta < 0 = []
    | delta == 0 = [(-b)/(2*a)]
    | delta > 0 = [(-b -sqrt delta)/(2*a), (-b +sqrt delta)/(2*a)]
    where
        delta = b*b - 4*a*c

-- Quicksort
quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (h:t) = quicksort [x | x <- t, x < h] -- menores que pivo
                  ++ [h] -- o proprio pivo
                  ++ quicksort [x | x <- t, x >= h] -- maiores que pivo

-- Exercícios
-- 1. Escreva uma função em haskell que calcule a somatória dos elementso de um vetor de inteiros
sumlist :: [Int] -> Int
sumlist [] = 0
sumlist (h:t) = h + sumlist (t)

-- 2. Escreva uma função em haskell que verifique se uma String possui o caractere informado (passado como parâmetro)
possui_caracter :: [Char] -> Char -> Bool
possui_caracter [] char = False
possui_caracter (h:t) char
    | h == char = True
    | otherwise = possui_caracter t char

-- 3. Escreva uma função em haskell que busque pelo meior número em um vetor de inteiros
maior_aux :: [Int] -> Int -> Int
maior_aux [] maior = maior
maior_aux (h:t) maior = if h >= maior then maior_aux t h else maior_aux t maior

maior :: [Int] -> Int
maior [] = error "Lista vazia"
maior (h:t) = maior_aux t h

maior_elemento :: [Int] -> Int
maior_elemento [] = -1
maior_elemento (h:t) = if h >= maiortail then h else maiortail
    where
        maiortail = maior_elemento t

-- 4. Escreva uma função em haskell que retorne os 10 primeiros múltiplos de n. Utiliza geradores de lista
multiplos :: Int -> [Int]
multiplos n = [n*i | i <- [1 .. 10]]

-- 5. Escreva uma função em haskell que verifique se um determinado número é primo. Utilize geradores de lista
primo :: Int -> Bool
primo n = length [x | x <- [1 .. n], mod n x == 0] == 2
