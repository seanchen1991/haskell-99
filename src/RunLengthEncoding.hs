module RunLengthEncoding (runLengthEncoding) where

-- Implement the run-lenght encoding data compression method. Consecutive duplicates 
-- of elements are encoded as lists (N E) where N is the number of duplicates of the
-- element E.

import Data.List

data ListItem a = Single a | Multiple Int a
    deriving (Show)

runLengthEncoding :: Eq a => [a] -> [ListItem a]

--encode l = map (\x -> (length x, head x)) (group l)

--runLengthEncoding = map func . encode
--    where func (1,x) = Single x
--          func (n,x) = Multiple n x

runLengthEncoding [] = []
runLengthEncoding (x:xs)
    | count == 1 = (Single x) : (runLengthEncoding xs)
    | otherwise = (Multiple count x) : (runLengthEncoding rest)
    where
        (matched, rest) = span (==x) xs
        count = 1 + (length matched)
