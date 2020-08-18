module Pack (pack) where

-- Pack consecutive duplicates of list elements into sublists.
-- Repeated elements should be placed in separate sublists.

import Data.List

pack :: Eq a => [a] -> [[a]]
--pack = groupBy (==)

-- `group` is a special case of the `groupBy` function, with `(==)` as the predicate
--pack = group

-- Implementation using a fold
--pack = foldr func []
--    where func x [] = [[x]]
--          func x (y:xs) = if x == y then (x:y):xs else [x]:y:xs

-- Implementation using `takeWhile` and `dropWhile`
pack [] = []
pack (x:xs) = (x : takeWhile (== x) xs) : pack (dropWhile (== x) xs)
