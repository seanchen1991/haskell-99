module Main where

import Last
import LastButOne
import KthElem
import NumElems
import Reverse
import IsPalindrome
import RemoveDupes
import Pack
import RunLengthEncoding

main :: IO ()
main = do
  putStrLn "Q1. Last"
  print $ myLast [1,2,3,4,5]

  putStrLn "Q2. Last But One"
  print $ lastButOne [1,2,3,4,5]

  putStrLn "Q3. Kth List Element"
  print $ kthElem "haskell" 5

  putStrLn "Q4. Num of Elements in List"
  print $ nElems [1,2,3,4,5,6,7,8,9]

  putStrLn "Q5. Reverse a List"
  print $ rev [1,2,3,4,5,6,7,8,9]

  putStrLn "Q6. Is List a Palindrome"
  print $ isPalindrome [1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1]

  putStrLn "Q7. Flatten Nested List"
  putStrLn "Omitted"
  -- print $ flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])

  putStrLn "Q8. Remove Consecutive Duplicates"
  print $ removeDupes "aaaabccccddeeeeeee"

  putStrLn "Q9. Dupes to Sublists"
  print $ pack ['a','a','a','a','b','c','c','a','a','d','e','e','e','e']

  putStrLn "Q10. Run Length Encoding"
  print $ runLengthEncoding ['a','a','a','a','b','c','c','a','a','d','e','e','e','e']
