module Range (range) where

-- Create a list of elements from `start` to `stop` inclusive

range :: Int -> Int -> [Int]

-- range start stop = [start .. stop]
range = enumFromTo
