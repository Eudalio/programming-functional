--Escreva a definição da função concatenaFold :: [[a]] -> [a] que concatena uma lista de listas 
--usando a função foldr::(a -> b -> b) -> b -> [a] -> b. Por exemplo,

--concatenaFold [[1,2],[3,4]] = [1,2,3,4]

--concatenaFold [[1,2],[3,4],[6,7,8]] = [1,2,3,4,6,7,8]

concatenaRec [] = []
concatenaRec (x:xs) = x ++ concatenaRec xs

-- Using foldr
concatenaFold xs = foldr(\x z -> x ++ z) [] xs

-- Using foldl
concatenaFoldL xs = foldl(\z x -> z ++ x) [] xs