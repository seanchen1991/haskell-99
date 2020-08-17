module LastButOne (lastButOne) where

-- Find the last but one element of a list.

lastButOne :: [a] -> a
-- `init` grabs all elements of a list except the last 
lastButOne = last . init

-- lastButOne :: Foldable f => f a -> Maybe a
-- lastButOne = fst . foldl (\(a, b) x -> (b, Just x)) (Nothing, Nothing)
