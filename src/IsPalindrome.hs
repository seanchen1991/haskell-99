module IsPalindrome (isPalindrome) where

-- Determine whether a list is a palindrome
isPalindrome :: Eq a => [a] -> Bool
-- isPalindrome l = l == reverse l

isPalindrome [] = True
isPalindrome [_] = True
-- Compose `init` and `tail` to grab every element except the first and last elements
isPalindrome l = head l == last l && isPalindrome (init $ tail l)

