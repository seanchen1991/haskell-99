module NumElems (nElems) where
-- Find the number of elements of a list.

nElems :: [a] -> Int
-- nElems = length

--nElems [] = 0
--nElems (x:xs) = 1 + nElems xs

nElems = foldr (\x -> (+) 1) 0
