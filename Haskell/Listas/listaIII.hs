import Data.List
import Data.Char(isDigit)

-- 1) Use o fmap para dobrar os elementos de uma lista
dobrarElementos :: (Functor f, Num a) => f a -> f a
dobrarElementos = fmap (*2) 

-- 2) Escreve um programa que receba um valor do teclado e depois escreva o fatorial do número

fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

calcularFatorial :: IO ()
calcularFatorial = do 
    putStrLn "Qual fatorial você quer calcular?"
    entrada <- getLine
    let numero = read entrada :: Integer
    let resultado = fatorial numero
    putStrLn (show numero ++ "! é " ++ show resultado)


-- 3) Escreva um programa que receba uma função lambda pelo teclado e aplique essa função em uma lista

safeDiv :: Int -> Int -> Maybe Int
safeDiv _ 0 = Nothing
safeDiv x y = Just (x `div` y)

interpretarExpressao :: String -> Maybe (Int -> Int)
interpretarExpressao expr
    | [lambda, simb, var, op, val] <- partes,
      lambda == "\\" ++ var,
      simb == "->",
      all isDigit val =
          case op of
              "+" -> Just (\x -> x + read val)
              "-" -> Just (\x -> x - read val)
              "*" -> Just (\x -> x * read val)
              "/" -> Just (\x -> case safeDiv x (read val) of
                                 Just r -> r
                                 Nothing -> error "Divisão por zero!")
              _   -> Nothing
    | [lambda, simb, var1, op, var2] <- partes,
      lambda == "\\" ++ var1,
      simb == "->",
      var1 == var2 =
          case op of
              "+" -> Just (\x -> x + x)
              "-" -> Just (\x -> 0)
              "*" -> Just (\x -> x * x)
              "/" -> Just (\x -> 1)
              _   -> Nothing
    | otherwise = Nothing
  where
    partes = words expr
    safeDiv _ 0 = Nothing
    safeDiv x y = Just (x `div` y)

processarLista :: [Int] -> IO ()
processarLista numeros = do
    putStrLn "Digite a expressão lambda (ex: \\x -> x + 3):"
    entrada <- getLine
    case interpretarExpressao entrada of
        Nothing   -> putStrLn "Expressão inválida ou não suportada!"
        Just func -> print (map func numeros)


-- 4) Escreva um programa que leia uma coleção de funções em um arquivo e aplique em uma lista (Utilize >>=, <*>, <$>)
executarDoArquivo :: [Int] -> IO ()
executarDoArquivo numeros = do
    putStrLn "Informe o arquivo contendo as funções:"
    nomeArq <- getLine
    conteudo <- readFile nomeArq
    let exprs = lines conteudo
        funcoes = map interpretarExpressao exprs
    case sequence funcoes of
        Nothing -> putStrLn "Erro: Alguma expressão é inválida!"
        Just fs -> do
            let resultados = aplicarSequencia numeros fs
            putStrLn "Resultados acumulados:"
            print resultados

aplicarSequencia :: [Int] -> [Int -> Int] -> [Int]
aplicarSequencia = foldl (\nums f -> map f nums)
