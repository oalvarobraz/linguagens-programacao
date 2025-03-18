-- Tipos sinônimos e tipos abstratos

-- type String = [Char]

-- Tipo algébrico é um tipo onde especificamso a forma de cada um dos elementos
-- data Bool = False | True
-- data significa que estamos definindo um novo tipo de dados

data Forma = Circulo Float Float Float | Retangulo Float Float Float Float
    | Cilindro Float Float | Trapezio Float Float Float | Triangulo Float Float | Hexagono Float Float
-- O valor do construtor Circulo tem 3 campos do tipo float
-- :type Circulo 
-- Circulo :: Float -> Float -> Float -> Forma

superficie :: Forma -> Float
superficie (Circulo _ _ r) = pi*r^2
superficie (Retangulo x1 y1 x2 y2) = abs (x2 - x1) * abs (y2 - y1)
superficie (Cilindro r h) = 2*pi*r*h + 2*pi*r^2
superficie (Trapezio a b h) = (a+b)*h/2
superficie (Triangulo b h) = b*h/2
superficie (Hexagono l _) = 3*l^2*sqrt 3/2

data Data = Data {ano :: Int, mes :: Int, dia :: Int}

calendario = Data 2020 08 22
-- ou
calendario2 = Data {dia = 2, mes = 08, ano = 2020}

-- Definindo a função de igual para a classe Foo
data Foo = Foo {x:: Integer, str :: String}
instance Eq Foo where
    (Foo x1 str1) == (Foo x2 str2) = (x1 == x2) && (str1 == str2)

-- Foo 1 "cadeira" == Foo 1 "cadeira" -- Isso irá retornar True

-- 2 questão da prova
instance Eq Forma where
    (Circulo x1 y1 r1) == (Circulo x2 y2 r2) = (x1 == x2) && (y1 == y2) && (r1 == r2)
    (Retangulo x1 y1 x3 y3) == (Retangulo x2 y2 x4 y4) = (x1 == x2) && (y1 == y2) && (x3 == x4) && (y3 == y4)
    (Cilindro r1 h1) == (Cilindro r2 h2) = (r1 == r2) && (h1 == h2)
    (Trapezio a1 b1 h1) == (Trapezio a2 b2 h2) = (a1 == a2) && (b1 == b2) && (h1 == h2)
    (Triangulo b1 h1) == (Triangulo b2 h2) = (b1 == b2) && (h1 == h2)
    (Hexagono l1 h1) == (Hexagono l2 h2) = (l1 == l2) && (h1 == h2)
    _ == _ = False

-- Forma de automatizar o Eq, usando o deriving

data Teste = Teste {a :: Integer, b :: String} deriving (Eq, Ord, Show)
-- com isso faz com que automaticamente ele faz o Eq, Ord e Show