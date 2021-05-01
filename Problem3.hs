{-
(*) Find the K'th element of a list. The first element in the list is number 1.

Example:

* (element-at '(a b c d e) 3)
c

Example in Haskell:

λ> elementAt [1,2,3] 2
2
λ> elementAt "haskell" 5
'e'
-}

elementAt :: [a] -> Int -> a
elementAt xs i = xs !! (i-1)

elementAt' :: [a] -> Int -> a
elementAt' [] _ = error "Empty List"
elementAt' (x:xs) 1 = x
elementAt' (x:xs) i = if i <= 0 then error "index <= 0" else elementAt' xs (i-1)