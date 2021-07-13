module Lib
    ( pow'
    , sqrt'
    , gcd'
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


sqrt' :: Int -> Int -> Int

sqrt' 1 _ = 1
sqrt' _ 1 = 1
sqrt' a b =
  let 
    sqrt'' a b l p
      | l <= p - 2 = sqrt'' a b l' p'
      | otherwise = l
      where 
        s = (l + p) `div` 2
        (l', p') = if pow' s b <= a then (s, p) else (l, s)
  in sqrt'' a b 1 a



gcd' :: Int -> Int -> Int
gcd' a b 
  | (a /= 0) && (b /= 0) = gcd' a' b'
  | otherwise = abs $ a + b
  where
    c' = b
    b' = a `mod` b
    a' = c'

  

