module RunLengthEncoding (runLengthEncoding) where

-- Implement the run-lenght encoding data compression method. Consecutive duplicates 
-- of elements are encoded as lists (N E) where N is the number of duplicates of the
-- element E.

import Data.List

runLengthEncoding :: Eq a => [a] -> [(Int, a)]

--runLengthEncoding l = map (\x -> (length x, head x)) (group l)

runLengthEncoding l = map encode $ group l
    where encode x = (length x, head x)
