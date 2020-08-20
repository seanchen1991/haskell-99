module SublistSort (lsort) where

-- Sort a list of sublists according to their length

import Data.List
import Data.Ord (comparing)

lsort :: [[a]] -> [[a]]
-- lsort = sortBy (comparing length)

lsort = sortBy (\xs ys -> compare (length xs) (length ys))