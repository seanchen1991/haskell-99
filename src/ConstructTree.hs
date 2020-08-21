module BinaryTree where

data Tree a = Empty | Branch a (Tree a) (Tree a)
    deriving (Show, Eq)

leaf x = Branch x Empty Empty

--constructTree :: Int -> [Tree Char]
--constructTree 0 = [Empty]
--constructTree 1 = [leaf 'x']
--constructTree n = if n `mod`2 == 1 then
--                  [Branch 'x' l r | l <- constructTree ((n - 1) `div` 2),
--                                    r <- constructTree ((n - 1) `div` 2)]
--                  else
--                  concat [[Branch 'x' l r, Branch 'x' r l] | l <- constructTree ((n - 1) `div` 2),
--                                                             r <- constructTree (n `div` 2)]

main = putStrLn $ concatMap (\t -> show t ++ "\n") balTrees
    where balTrees = filter isBalancedTree (makeTrees 'x' 4)

isBalancedTree :: Tree a -> Bool
isBalancedTree Empty = True
isBalancedTree (Branch _ l r) = abs (countBranches l - countBranches r) <= 1 && isBalancedTree l && isBalancedTree r
isBalancedTree _ = False

countBranches :: Tree a -> Int
countBranches Empty = 0
countBranches (Branch _ l r) = 1 + countBranches l + countBranches r

-- make all possible trees filled with the given number of nodes 
-- and fill them with the given values 
makeTrees :: a -> Int -> [Tree a]
makeTrees _ 0 = []
makeTrees c 1 = [leaf c]
makeTrees c n = lonly ++ ronly ++ landr
    where lonly = [Branch c t Empty | t <- smallerTree]
          ronly = [Branch c Empty t | t <- smallerTree]
          landr = concat [[Branch c l r | l <- fst lrtrees, r <- snd lrtrees] | lrtrees <- treeMinusTwo]
          smallerTree = makeTrees c (n - 1)
          treeMinusTwo = [(makeTrees c num, makeTrees c (n - 1 - num)) | num <- [0 .. n - 2]]
