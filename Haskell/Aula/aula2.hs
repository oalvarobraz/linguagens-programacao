double1 x = 2 * x
double2 = (2*) -- função restringida

-- (+) 2 1  -- notação interfixada

-- (-) ((*) 5 ((+) 4 6)) 2 -- notação prefixada
-- (-) ((*) 5 10) 2
-- (-) 50 2
-- 48

-- Listas
-- pares = [0, 2, 4, 6, 8]
-- impares = [1, 3 .. 9] -- gera lista de impares até o 9

-- pares = [2*x | x <- [0..10]]
-- pares = [2*x | x <- [0..]] vai até o infinito, é a mesma coisa que pares = [0,2 ..]


func n = [ f | f <- [1 .. n], n `mod` f == 0]

-- Quando o nome de uma função é suado com um oeprador interfixado, o nome deve ser colocado entre caracteres delimitadores

-- 8:[] -- retorna [8] realiza a inserção do número 8 na lista

pares = [0,2,4,6,8]
head pares -- retorna 0
tail pares --retorna [2,4,6,8]
head(tail pares) -- retorna 2
tail (tail pares) -- retorna [4,6,8]
head[6,8] -- retorna 6
tail[6,8] -- retorna [8]
tail[8] -- retorna []

-- Operador para juntar listas '++'

[1,2]++[3,4]++[5] -- retorna [1,2,3,4,5]
pares++impares -- retorna [0,2,4,6,8,1,3,5,7,9]

-- Operador para testar se um objeto é igual ouequivalente a outro '=='

-- Operador para testar se uma lista esta vazia 'null'

-- Tipos
Bool
Int e Integer, int suporta 2^31 até 2^31-1, ja o Integer suporta inteiros de qualquer tamanho
Char
String
Float

-- caracteres
['h', 'e', 'l', 'l', 'o'] 
-- é equivalente a
"hello"

-- para testar o tipo usamos :type ou :t