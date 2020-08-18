module Flatten (flatten, NestedList) where

-- We can turn the NestedList type into a Foldable
-- import qualified Data.Foldable as F

-- Flatten a (possibly) nested list structure

-- We'll need a new type to represent nested lists since lists in Haskell are homogenous.
data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem a) = [a]
flatten (List a) = concatMap flatten a

--instance F.Foldable NestedList where
--    foldMap f (Elem a) = f a
--    foldMap f (List []) = mempty
--    foldMap f (List (x:xs)) = F.foldMap f x `mappend` F.foldMap f (List xs)
--
--flatten = F.foldMap (\x -> [x])
