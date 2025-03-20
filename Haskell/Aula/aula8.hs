import Data.List

-- Modulos
-- • Um módulo Haskell é uma coleção de funções, tipos e classes
-- A função find recebe uma lista e um predicado e retorna o primeiro elemento que satisfaça o predicado. Porém ele retorna o elemento envolvido em um valor Maybe.
-- Prelude Data.List> :type find
-- find :: Foldable t => (a -> Bool) -> t a -> Maybe a
-- • O tipo Maybe (Talvez) define dois contextos relacionados: Nothing (“Nada”) e Just a("Simplesmente a“)

-- data Maybe a = Nothing | Just a

-- find (>4) [1,2,3,4,77,120]
-- so irá retornar o primeiro maior que 4: "Just 7"

-- fmap f Nothing = Nothing
-- fmap f (Just b) = Just (f b)

-- Quando usamos fmap em uma função, estamos fazendo composiçaõ de funções

-- Usar o fmap é um meio de ultizar várias funções em um elemento
-- fmap (+1)(+3)4

-- outro jeito
-- (+1)<$>(+3)<$>[1,2,3]
-- rastreio: [1,2,3] -> (+3)[1,2,3] -> [4,5,6] -> (+1)[4,5,6] -> [5,6,7]

-- (+1)<$>(+3)<$>Just 6
-- Just 6 = valor encapsulado, ele é meio que uma lista com somente um elemento
-- retorna = "Just 10"

-- Suponha que queremos os resultados das aplicações de varias funções em uma lista. Por exemplo:
-- [(*2), (+3)] <*> [1,2,3]
-- <*> : operador
-- [(*2), (+3)] : coleção de funções

-- Just (+3) <*> Just 2
-- Just esta dentro do tipo Maybe

-- Assinatura:
-- Prelude :t (<$>)
-- (<$>) :: Functor f => (a -> b) -> f a -> f b
-- Função não esta encapsulada

-- Prelude :t (<*>)
-- (<*>) :: Applicative f => f (a -> b) -> f a -> f b
-- Precisa de um valor encapsulado f (a -> b)

-- Ex.: (<$>) :: Functor f => (a -> b) -> Maybe a -> Maybe b
-- Prelude> (+2) <$> Just 3
-- Just 5

-- Ex.: (<*>) :: Applicative f => Maybe (a -> b) -> Maybe a -> Maybe b
-- Prelude> Just (+2) <*> Just 3
-- Just 5

-- Functors aplica uma função em valor envolto

-- Applicatives aplica uma função envolta de um valor envolto

-- Mônada
-- aplica uma função que retona um valor envolto a um valor envolto

-- Prova:
half :: Integral a => a -> Maybe a
half x = if even x 
        then Just(x `div` 2) 
    else Nothing

-- Se for par retorna a metade se não retona Nothing
-- tomar cuidado com o uso do div e do /

-- Ira dar ero se eu fizer half Just 4, e para arrumar isso usamos a mônada
-- utilizamos a função bind >>= para inserir o valor envolto na função
-- Just 4 >>= half

-- :t (>>=)
-- (>>=) :: Monad m => m a -> (a -> m b) -> m b
-- recebe uma mônada, ex.: Just 4
-- recebe uma função que retona uma Monada, ex half
-- Retorna uma Mônada.

-- Ex.: getLine, readFile, putStrLn
-- Ex.: [3,4,5] >>= \x -> [x,-x]
-- retorno: [3,-3,4,-4,5,-5]

-- Qual o resultado?
-- Just 20 >>= half >>= half >>= half
-- Retorna Nothing