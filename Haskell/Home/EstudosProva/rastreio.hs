
funcao1 :: [Int] -> [Int]
funcao1 [] = []
funcao1 (h:t) = funcao1 [x | x <- t, x < h] ++ [h] ++ funcao1 [x | x <- t, x >= h]

funcao2 :: [Int] -> [Int] -> [Int]
funcao2 [] _ = []
funcao2 _ [] = []
funcao2 (h1:t1) (h2:t2)
    | h1 == h2 = h1 : funcao2 t1 t2
    | h1 < h2 = funcao2 t1 (h2:t2)
    | otherwise = funcao2 (h1:t1) t2

funcao3 :: [Int] -> Int -> [Int]
funcao3 [] _ = []
funcao3 (h:t) x
    | h == x = t
    | otherwise = h : funcao3 t x

funcao4 :: [Int] -> [Int]
funcao4 [] = []
funcao4 (h:t) = funcao4 (filter (/= h) t) ++ [h]

funcao5 :: [Int] -> Int -> Bool
funcao5 [] _ = False
funcao5 (h:t) x
    | h == x = True
    | otherwise = funcao5 t x

funcao6 :: [Int] -> [Int]
funcao6 [] = []
funcao6 (h:t) = funcao6 (filter (> h) t) ++ [h] ++ funcao6 (filter (<= h) t)

funcao7 :: [Int] -> [Int] -> [Int]
funcao7 [] _ = []
funcao7 _ [] = []
funcao7 (h1:t1) (h2:t2)
    | h1 == h2 = h1 : funcao7 t1 t2
    | otherwise = funcao7 t1 t2

funcao8 :: [Int] -> [Int] -> [Int]
funcao8 [] ys = ys
funcao8 (x:xs) ys = funcao8 xs (x:ys)

funcao9 :: [Int] -> [Int]
funcao9 [] = []
funcao9 (h:t) = [h * 2] ++ funcao9 t

funcao10 :: [Int] -> [Int]
funcao10 [] = []
funcao10 (h:t)
    | h `mod` 2 == 0 = h : funcao10 t
    | otherwise = funcao10 t

funcao14 :: [Int] -> Int -> [Int]
funcao14 [] _ = []
funcao14 (h:t) x
    | h == x = t
    | otherwise = h : funcao14 t x

funcao15 :: [Int] -> [Int]
funcao15 [] = []
funcao15 (h:t) = funcao15 (filter (/= h) t) ++ [h]

funcao18 :: [Int] -> [Int] -> [Int]
funcao18 [] _ = []
funcao18 _ [] = []
funcao18 (h1:t1) (h2:t2)
    | h1 == h2 = h1 : funcao18 t1 t2
    | otherwise = funcao18 t1 t2