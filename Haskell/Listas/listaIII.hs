import Data.List

-- 1) Use o fmap para dobrar os elementos de uma lista
dobrarElementos :: (Functor f, Num a) => f a -> f a
dobrarElementos = fmap (*2) 

-- 2) Escreve um programa que receba um valor do teclado e depois escreva o fatorial do número

fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

calcularFatorial :: IO ()
calcularFatorial = do 
    putStrLn "Qual fatorial você quer calcular?"
    entrada <- getLine
    let numero = read entrada :: Integer
    let resultado = fatorial numero
    putStrLn (show numero ++ "! é " ++ show resultado)


-- 3) Escreva um programa que receba uma função lambda pelo teclado e aplique essa função em uma lista


-- 4) Escreva um programa que leia uma coleção de funções em um arquivo e aplique em uma lista (Utilize >>=, <*>, <$>)

