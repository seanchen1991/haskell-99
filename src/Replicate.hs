module Replicate (repli) where

-- Replicate the elements of a list a given number of times.

repli :: [a] -> Int -> [a]

repli l k = concatMap (replicate k) l

