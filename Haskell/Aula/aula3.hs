-- Condicionais

maximo3valores :: Ord a => a -> a -> a -> a
maximo3valores x y z = if x >= y && x >= z then x else if y >= x && y >= z then y else z

maximo3valores2 :: Ord a => a -> a -> a -> a
maximo3valores2 x y z
    | x >= y && x >= z = x
    | y >= x && y >= z = y
    | otherwise = z

fact :: (Num a, Enum a) => a -> a
fact n = product[1 .. n]

mysum :: Num a => [a] -> a
mysum [] = 0
mysum (x:xs) = x + mysum xs

-- retornar tamanho da lista
tamList :: Eq a => [a] -> Int
tamList [] = 0
tamList (h:t) = 1 + tamList t

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

-- Descobrir o ponto medio da lista
