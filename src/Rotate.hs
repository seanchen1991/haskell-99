module Rotate (rotate) where

-- Rotate a list N places to the left

rotate :: [a] -> Int -> [a]

--rotate xs k = take len . drop (k `mod` len) . cycle $ xs
--    where len = length xs

--rotate xs k = take len $ drop (len + k) $ cycle xs
--    where len = length xs

rotate [] _ = []
rotate xs 0 = xs
rotate xs k
    | k > 0 = rotate (tail xs ++ [head xs]) (k - 1)
    | otherwise = rotate (last xs : init xs) (k + 1)
