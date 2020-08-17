module Reverse (rev) where

-- Reverse a list 

rev :: [a] -> [a]
-- rev = reverse
rev = foldl (flip (:)) []

--rev l = reverse' l []
--    where reverse' [] reversed = reversed
--          reverse' (x:xs) reversed = reverse' xs (x:reversed)
