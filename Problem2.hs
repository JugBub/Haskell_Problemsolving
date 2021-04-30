{-
(*) Find the last but one element of a list.

(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

λ> myButLast [1,2,3,4]
3
λ> myButLast ['a'..'z']
'y'
-}

myButLast :: [a] -> a
myButLast [] = error "Empty list!!"
myButLast [x] = error "List is too short!!"
myButLast [x,y] = x
myButLast (x:xs) = myButLast xs