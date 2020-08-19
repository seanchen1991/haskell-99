module Remove (removeAt) where

-- Remove the Kth element from a list 

--removeAt :: Int -> [a] -> (a, [a])
--
--removeAt k xs = (xs !! (k - 1), remaining)
--    where remaining = take (k - 1) xs ++ drop k xs

-- Safer version 
removeAt :: Int -> [a] -> (Maybe a, [a])

removeAt k xs
    | k > length xs = (Nothing, xs)
    | otherwise = (Just (xs !! (k - 1)), remaining)
        where remaining = take (k - 1) xs ++ drop k xs

