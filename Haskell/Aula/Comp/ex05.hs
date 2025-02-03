duplicaLista::[Integer]->[Integer]
duplicaLista [] = []
duplicaLista (x:xs) =  x  : x : duplicaLista xs