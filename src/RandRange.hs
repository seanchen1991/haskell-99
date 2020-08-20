module RandRange (randRange) where

-- Draw N different random numbers from the set 1..M

import Data.List
import System.Random

randRange :: Int -> Int -> StdGen -> [Int]

randRange n m = take n . nub . randomRs (1, m)

