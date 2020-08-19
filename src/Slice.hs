module Slice (slice) where

-- Extract a slice from a list
-- Note that we 1-index the start of the list 
-- Also note that the `stop` index is inclusive

slice :: [a] -> Int -> Int -> [a]

slice xs start stop
    | start > 0 = take (stop - start + 1) $ drop (start - 1) xs

-- List comprehension solution
-- slice xs start stop = [x | start <= start, (x, j) <- zip xs [1 .. stop]]
