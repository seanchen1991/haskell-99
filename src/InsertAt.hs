module InsertAt (insertAt) where

-- Insert an element at the given position in a list 

import Split

insertAt :: a -> [a] -> Int -> [a]

-- Implementation using `split`
-- insertAt x xs p = let (ys, zs) = split xs (p - 1) in (ys ++ x : zs)

insertAt x xs 1 = x : xs
insertAt x (y:ys) p = y : insertAt x ys (p - 1)
