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
import DecodeEncoding
import Duplicate
import Replicate 
import DropEvery 
import Split
import Slice
import Rotate
import Remove
import InsertAt
import Range
import RandSelect
import RandRange
import SublistSort
import IsPrime

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
  print $ runLengthEncoding ['a','a','a','z', 'a','b','c','c','a','a','d','e','e','e','e']

  putStrLn "Q12. Decode Encoding"
  print $ decode [(4, 'a'), (1, 'b'), (2, 'c'), (2, 'a'), (1, 'd'), (4, 'e')]

  putStrLn "Q14. Duplicate List Elements"
  print $ dupe [1, 2, 3]

  putStrLn "Q15. Replicate Elements N Times"
  print $ repli "abc" 3

  putStrLn "Q16. Drop Every Nth Element"
  print $ dropEvery "abcdefghij" 3

  putStrLn "Q17. Split List at N"
  print $ split "abcdefghij" 3

  putStrLn "Q18. Extract Slice from List"
  print $ slice "abcdefghijk" 3 7

  putStrLn "Q19. Rotate List N Places to Left"
  print $ rotate "abcdefgh" 3

  putStrLn "Q20. Remove Kth from List"
  print $ removeAt 2 "abcd"

  putStrLn "Q21. Insert Element at Given Position"
  print $ insertAt 'X'"abcd" 2 

  putStrLn "Q22. Create Range"
  print $ range 5 10

  putStrLn "Q23. Extract N Random Elements from List"
  randSelect "abcdefghij" 3 >>= putStrLn

  putStrLn "Q24. Draw N Random Numbers from a Range"
  -- randRange 5 49 >>= putStrLn

  putStrLn "Q28. Sort List of Lists According to Length of Sublists"
  print $ lsort ["abc","de","fgh","de","ijkl","mn","o"]
  
  putStrLn "Q31. Determine Whether a Number is Prime"
  print $ isPrime 23

