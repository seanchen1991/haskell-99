module IsPrime (isPrime) where

-- Determine whether a number is prime

isPrime :: Integral a => a -> Bool

isPrime 1 = False
isPrime 2 = True
isPrime n
    | (length [x | x <- [2 .. n - 1], mod n x == 0]) > 0 = False
    | otherwise = True
