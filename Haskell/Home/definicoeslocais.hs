-- Clausulas where e let

areaheron :: Float -> Float -> Float -> Float
areaheron a b c = sqrt(s*(s-a)*(s-b)*(s-c))
    where
        s = (a+b+c)/2

outrafunc :: Int -> Int
outrafunc y = 3 + func y + func a + func b
    where
        func x = x + 7*c
        a = 3*c
        b = func 2
        c = 10

eq2grau :: Float -> Float -> Float -> Int
eq2grau a b c
    | delta > 0 = 2
    | delta == 0 = 1
    | otherwise = 0
    where
        delta = b^2 - 4*a*c

areacilindro :: Float -> Float -> Float
areacilindro r h = let arealado = 2 * pi * r * h
                       areabase = pi * r * r
                    in arealado + 2*areabase