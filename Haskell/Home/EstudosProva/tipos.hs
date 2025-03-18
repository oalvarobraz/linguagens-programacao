dobro x = x * 2

primeiro (x,y) = x

maiorQue10 x = x > 10

somaLista xs = sum xs

triplo x = x * 3

ultimo xs = last xs

menorQueZero x = x < 0

produtoLista xs = foldr (*) 1 xs

concatena (xs, ys) = xs ++ ys

segunda (x, y) = y

restoDiv x y = mod x y

somaQuadrados xs = sum [x^2 | x <- xs]

aplicaDuasVezes f x = f (f x)

parOrdenado x y = (x, y)

misteriosa1 f g x = f (g x)

misteriosa2 x y = (x, [y])

misteriosa3 xs = filter even xs

misteriosa4 xs = map (\x -> (x, x * 2)) xs

misteriosa5 f xs = map f xs

misteriosa6 x = zip x [1..]

misteriosa7 xs ys = [x * y | (x, y) <- zip xs ys]

misteriosa8 f g h x = f (g x) (h x)

misteriosa9 xs = foldr (\x acc -> x + acc) 0 xs

misteriosa10 f = \x -> \y -> f y x

desafio1 x = x ++ x

desafio2 f g x = f x + g x

desafio3 f x y = f (x, y)

desafio4 xs = map (\x -> x > 0) xs

desafio5 x = if x then "Verdadeiro" else "Falso"

desafio6 xs = sum (map (^2) xs)

desafio7 f g xs = zip (map f xs) (map g xs)

desafio8 f g h = \x -> f (g x) (h x)

desafio9 f xs = foldl (\acc x -> acc ++ f x) [] xs

desafio10 f x y = f y x

misterio1 [] = []
misterio1 (x:xs) = misterio1 xs ++ [x]

misterio2 (x:xs) = (x, length xs)

misterio3 xs = [x | x <- xs, mod x 2 == 1]

misterio4 (x:y:xs) = y : x : misterio4 xs
misterio4 xs = xs

misterio5 [] = 0
misterio5 (x:xs) = if elem x xs then misterio5 xs else 1 + misterio5 xs

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

tipo1 x = x *2

tipo2 x y = (x, y)

tipo3 xs = head xs

tipo4 f x  =  f x

tipo5 x = [x, x]
