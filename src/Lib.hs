module Lib
    ( pow
    , someFunc
    ) where

pow :: Int -> Int -> Int -> Int
pow a b c 
  | b > 0 = pow a' b' c'
  | otherwise = c
  where 
    c' = if odd b then c * a else c
    a' = a * a
    b' = b `div` 2



someFunc :: IO ()
someFunc = putStrLn "someFunc"
