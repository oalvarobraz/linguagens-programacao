-- Tuplas
-- É uma coleção de valores que podem ou nõ ter tipos diferentes
-- ("Jhon", 12345)
-- pegar o primeiro elemento da tupla: fst ("Jhon", 12345) == retorna "John"
-- pegar o segundo elemento da tupla: snd ("Jhon", 12345) == retorna 12345
-- Obs.: So funciona se a tupla for de tamanho 2

type NomeAluno = String
type MediaNota = Int
type Aluno = (NomeAluno, MediaNota)
type Turma = [Aluno]

aprovados :: Turma -> Int -> [NomeAluno]
aprovados tma nota = [nome | (nome, media) <- tma, media >= nota]

-- Exercicios
-- 1. Crie a representação de um ponto de três dimensões (x,y,z). A representação deve ser realizada por meio de uma tupl e a definição de um novo tipo
type Ponto = (Float, Float, Float)

-- 2. Escreva uma funçaõ que calcule a distância entre dois pontos passados como argumentos
distancia :: Ponto -> Ponto -> Float
distancia (x1, y1, z1) (x2, y2, z2) = sqrt (dx^2 + dy^2 +dz^2)
    where
        dx = x1-x2
        dy = y1-y2
        dz = z1-z2