retornaMaiores:: Integer->[Integer]->[Integer]
retornaMaiores  n [] = []
retornaMaiores n (x:xs) = if x > n then x : retornaMaiores n xs else retornaMaiores n xs    