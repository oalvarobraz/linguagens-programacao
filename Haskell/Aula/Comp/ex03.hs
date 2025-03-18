retornaMaior::[Integer]->Integer
retornaMaior [] = 0
retornaMaior (x:xs) = if x > retornaMaior xs then x else retornaMaior xs