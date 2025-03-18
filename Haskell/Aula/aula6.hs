myFolr1 :: (a -> a -> a) -> [a] -> a
myFolr1 f [x] = x
myFolr1 f (x:xs) = f x (myFolr1 f xs)
myFolr1 _ [] = error "Predule.foldr1: empty list"


myfoldl1 :: (a -> a -> a) -> [a] -> a
myfoldl1 f [x] = x
myfoldl1 f (x:xs) = myfoldl1 f (f x (head xs) : tail xs)
myfoldl1 _ [] = error "Predule.foldl1: empty list"

-- Aplicação ($)
-- sum (map sqrt [1..130]) é a mesma coisa que sum $ map sqrt [1..130]

-- sum (filter(>10)(map (*2)[2..10])) é a mesma coisa que sum $ filter(>10) $ map (*2) [2..10]