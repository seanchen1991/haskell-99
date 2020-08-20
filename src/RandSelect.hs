module RandSelect (randSelect) where

-- Select N random elements from a list 

import System.Random

randSelect :: [a] -> Int -> IO [a]

randSelect xs n = do
    -- seed the RNG
    gen <- getStdGen
    return $ take n [xs !! x | x <- randomRs (0, length xs - 1) gen]
