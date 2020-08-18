module RemoveDupes (removeDupes) where

-- Eliminate consecutive duplicates of list elements.
-- import Data.List

removeDupes :: Eq a => [a] -> [a]
--removeDuples = map head . group

-- Straightforward implementation using `dropWhile`
removeDupes [] = []
removeDupes (x:xs) = x : (removeDupes $ dropWhile (== x) xs)
