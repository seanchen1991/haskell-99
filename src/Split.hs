module Split (split) where

-- Split a list into two parts; the length of the 
-- first part is given.

split :: [a] -> Int -> ([a], [a])

-- `take` the first `k` elements, then `drop` the
-- first `k` elements
-- split l k = (take k l, drop k l)

split (x:xs) k | k > 0 = let (f, l) = split xs (k - 1) in (x : f, l)
split xs _ = ([], xs)
