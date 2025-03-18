--  xor :: Bool -> Bool -> Bool
xor p q = (p || q) && not (p && q)

-- :type (+) :: Num a => a -> a -> a

-- Questão 3 da prova falar a parte do fraction, que na divisão os numeros tem que ser de ponto flutuante, com isso não funciona dividir int
-- para isso existe a função fromIntegral
-- fromIntegral :: (Integral a, Num b) => a -> b
-- todo fractional é um numero, mas nem todo numero é um fractional

-- A operação e restringida ao tipo Fractional, visto que a divisão de dois inteiros pode retornar um número não inteiro.
-- >1 / 5
-- 0.2
-- • (1) e (5) são polimórficos e podem assumir valores Double.

-- lista
-- as lista podem conter qualquer coisa, desde que sejam todos do mesmo tipo

-- Tupla
-- uma tupla é uma coleção de valores de diferentes tipos

-- let lista1 = [1,2,3]

-- Escreva uma função recursiva que inverta ordem dos elementos presentes no vetor.
inverterList :: [a] -> [a]
inverterList [] = error "Lista vazia"
inverterList [x] = [x]
inverterList (h:t) = inverterList t ++ [h]