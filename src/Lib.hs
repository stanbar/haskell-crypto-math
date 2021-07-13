module Lib
    ( pow'
    , sqrt
    ) where

pow' :: Int -> Int -> Int
pow' a b =
  let 
    pow a b c 
      | b > 0 = pow a' b' c'
      | otherwise = c
      where 
        c' = if odd b then c * a else c
        a' = a * a
        b' = b `div` 2
  in pow a b 1


sqrt' :: Int -> Int -> Int -> Int
sqrt' a b l
  | l <= a - 2 = sqrt' a b l
  | otherwise = l
  where 
    s = (l + a) `div` 2
    l = if pow' s b <= a then s else l

