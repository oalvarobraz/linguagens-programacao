misterio xs = foldr (\x acc -> if x `mod` 2 == 0 then x:acc else acc) [] xs

-- foldl f z [x1, x2, x3] = ((z `f` x1) `f` x2) `f` x3

-- foldr f z [x1, x2, x3] = x1 `f` (x2 `f` (x3 `f` z))

enigma xs = foldl (\(ks,vs) (k,v) -> (k:ks, v:vs)) ([],[]) xs