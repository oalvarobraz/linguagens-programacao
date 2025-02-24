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

funcao11 :: [Int] -> [Int] -> [Int]
funcao11 [] ys = ys
funcao11 xs [] = xs
funcao11 (x:xs) (y:ys)
    | x < y = x : funcao11 xs (y:ys)
    | otherwise = y : funcao11 (x:xs) ys

funcao12 :: [Int] -> Int
funcao12 [] = 0
funcao12 (h:t) = h - funcao12 t

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

misterio2 (x:xs) = (x, length xs)

misterio3 xs = [x | x <- xs, mod x 2 == 1]

misterio4 (x:y:xs) = y : x : misterio4 xs
misterio4 xs = xs

misterio5 [] = 0
misterio5 (x:xs) = if x `elem` xs then misterio5 xs else 1 + misterio5 xs

misterio6 [] = 0
misterio6 (x:xs) = x + misterio6 xs

misterio7 xs = [x^2 | x <- xs, even x]

misterio8 [] = []
misterio8 (x:xs) = misterio8 xs ++ [x * 2]

misterio9 xs = [y | (x,y) <- zip xs (tail xs), y > x]

misterio10 _ [] = []
misterio10 n (x:xs) = if mod x n == 0 then x : misterio10 n xs else misterio10 n xs

misterio11 xs = [if even x then x `div` 2 else x * 3 + 1 | x <- xs]

misterio12 [] = []
misterio12 [_] = []
misterio12 (x:_:xs) = x : misterio12 xs

misterio13 xs = [sum (take i xs) | i <- [1..length xs]]

misterio14 [] = []
misterio14 (x:xs) = misterio14 [y | y <- xs, y < x] ++ [x] ++ misterio14 [y | y <- xs, y >= x]

misterio15 xs = [(x,y) | x <- xs, y <- xs, x < y]

misterio16 [] = 1
misterio16 (x:xs) = x * misterio16 xs

misterio17 xs = [y | (x, y) <- zip xs [1..], odd x]

misterio18 [] = []
misterio18 (x:xs) = misterio18 [y | y <- xs, y < x] ++ [x] ++ misterio18 [y | y <- xs, y >= x]

misterio19 xs = [(x, y) | x <- xs, y <- xs, x + y == 10]

misterio20 _ [] = []
misterio20 n (x:xs) = if mod x n == 0 then misterio20 n xs else x : misterio20 n xs
