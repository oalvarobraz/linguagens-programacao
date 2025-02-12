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