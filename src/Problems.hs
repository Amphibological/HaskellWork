{- Ninety-Nine Haskell Problems -}

-- Find the last element of a list
myLast :: [a] -> a
myLast [x] = x
myLast (x:xs) = myLast xs

-- Find the second last element of a list
myButLast :: [a] -> a
myButLast [x, y] = x
myButLast (x:xs) = myButLast xs

-- Find the kth element of a list (1-indexed)
elementAt :: [a] -> Int -> a
elementAt (x:_) 1 = x
elementAt (_:xs) k = elementAt xs (k - 1)
elementAt _ _ = error "Index out of bounds"

-- Find the length of a list
myLength :: [a] -> Int
myLength ls = myLength' ls 0 where
    myLength' :: [a] -> Int -> Int
    myLength' [] n = n
    myLength' (_:xs) n = myLength' xs (n + 1)

-- Find out whether a list is a palindrome (not using reverse, that's boring)
isPalindrome :: [a] -> Bool
isPalindrome ls = error "FIXME"



-- Here to please HIE
main :: IO ()
main = return ()