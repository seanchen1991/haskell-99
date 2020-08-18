module Duplicate (dupe) where

-- Duplicate the elements of a list

dupe :: [a] -> [a]

dupe = concatMap (replicate 2)
