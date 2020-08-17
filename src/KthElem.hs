module KthElem (kthElem) where

-- Find the Kth element of a list. The first element in the list is number 1.

-- Using the `!!` operator
kthElem :: [a] -> Int -> a
kthElem l k = l !! (k-1)

-- Using `drop`
--kthElem l k
--    | length l < k = error "Index out of bounds"
--    | otherwise = head $ drop (k - 1) l
