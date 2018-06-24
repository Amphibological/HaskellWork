module Throwaway (addNumbers) where


import Control.Monad (foldM)

addNumbers :: Int -> Int -> Int
addNumbers = (+)

alias :: (Foldable t, Monad m) =>  b -> (b -> a -> m b) -> t a -> m b
alias = flip foldM