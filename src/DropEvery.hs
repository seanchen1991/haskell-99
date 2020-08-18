module DropEvery (dropEvery) where

-- Drop every Nth element from a list.

dropEvery :: [a] -> Int -> [a]

dropEvery l k = dropEvery' l k k
    where dropEvery' [] _ _ = []
          dropEvery' (x:xs) k 1 = dropEvery' xs k k
          dropEvery' (x:xs) k n = x : dropEvery' xs k (n - 1)
