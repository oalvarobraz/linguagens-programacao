-- Listas e tuplas

-- listas: são coleções de elementos do mesmo tipo definidas com []
-- tuplas: são coleções de elementos que podem ser de tipos diferentes e são definidas com ()


-- Funções de Ordem Superior

-- São funções que recebem outras funções como argumentso ou retornam funções. Como map, filter, fold
-- Map: Aplica uma função a cada elemento de uma lista
-- Filter: Filtra os elementos de uma lista com base em um predicado
-- Fold: Combina os elementos de umal ista para produzir um único valor

-- Aplicação ($): Permite não usar parenteses
-- Ex.: 
-- Sem o operador $
sum (filter (> 10) (map (* 2) [1, 2, 3, 4, 5]))

-- Com o operador $
sum $ filter (> 10) $ map (* 2) [1, 2, 3, 4, 5]

-- Tipos algébricos

-- Permitem definir tipos de dados personalizados, combinando diferentes valores. São definidos usando data


-- Classes e Instâncias

-- São como interfaces que definem comportamentos comuns para tipos. Ex.: a classe Eq define operações de igualdade (== e /=)
data Foo = Foo {x:: Integer, str :: String}
instance Eq Foo where
    (Foo x1 str1) == (Foo x2 str2) = (x1 == x2) && (str1 == str2)
-- Derivação: Permite derivar automaticamente instâncias de classes comuns como Eq, Ord, e Show usando deriving


-- Mônadas

-- São uma estrutura usada para lidas com efeitos colaterais e computações sequenciais. Elas encapsulam valores em um contexto, como Maybe (pode ser Just valor ou Nothing)
-- aplica uma função que retona um valor envolto a um valor envolto
-- Ex.:
--      Ira dar erro se eu fizer half Just 4, e para arrumar isso usamos a mônada
--      utilizamos a função bind >>= para inserir o valor envolto na função
--      Just 4 >>= half

-- Applicatives: Permitem aplicar funções envoltas em valores envoltos
-- Ex.: Just (+3) <*> Just 2

-- Pra que usar Just?
-- É usado em um contexto Maybe, visto que ele "envolve" o valor permitindo que a gente lide com a possibilidade de que o valor não exista
-- Ex.:
encontrar :: Eq a => a -> [a] -> Maybe a
encontrar _ [] = Nothing
encontrar x (y:ys)
    | x == y    = Just y
    | otherwise = encontrar x ys