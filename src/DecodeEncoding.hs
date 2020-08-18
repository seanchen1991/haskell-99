module DecodeEncoding (decode) where

-- Decode a run-length encoded list.

decode :: Eq a => [(Int, a)] -> [[a]]

-- Implementation using `replicate` function
decode = map (\(a,b) -> replicate a b)

