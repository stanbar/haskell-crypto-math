module Lib
  ( pow',
    sqrt',
    gcd',
    numberOfDivisors,
    divisors,
    nthPrime,
    nPrimes,
    relativePrimes,
    totient,
    isRelativePrime,
    isPrime,
    isPowerOfSomeNumber
  )
where

pow' :: Int -> Int -> Int
pow' a b =
  let pow a b c
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
  let sqrt'' a b l p
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

divisors :: Int -> [Int]
divisors a =
  let dividors' a n d
        | n == 1 = d
        | otherwise = a `div` n : n : dividors' a (n -1) d
   in dividors' a (sqrt' a 2) [1, a]

numberOfDivisors :: Int -> Int
numberOfDivisors a = sum [a `div` b - ((a - 1) `div` b) | b <- [1..a]]

nthPrime :: Int -> Int
nthPrime n =
  let sn n =
        let denomSum i = foldl (\accj j -> accj + (i `div` j) - ((i - 1) `div` j)) 0 [2 .. i -1]
         in foldl (\acci i -> acci + (1 `div` (1 + denomSum i))) 0 [2 .. n]
   in head [x | x <- [1 ..], sn x >= n]

nPrimes :: Int -> [Int]
nPrimes n = [nthPrime x | x <- [1 .. n]]

isRelativePrime :: Int -> Int -> Bool
isRelativePrime a b = gcd' a b == 1

-- Returns all numbers that are relatively prime to $a$.
-- A number relatively prime to $a$ is a number which does not have any other divisors than one. Formally $x$ is relatively prime to $a$ iff gcd(a, x) == 1.
relativePrimes :: Int -> [Int]
relativePrimes a = [x | x <- [1 .. a -1], isRelativePrime' x]
  where isRelativePrime' x = isRelativePrime a x


totient :: Int -> Int
totient a = length $ relativePrimes a

isPrime :: Int -> Bool
isPrime k = if k <= 1 then False else null [ x | x <- [2 ..  sqrt' k 2], k `mod` x == 0]


bits :: Int -> Int
bits x = ceiling $ logBase 2 $ fromIntegral x

isPowerOfSomeNumber :: Int -> Bool
isPowerOfSomeNumber a = any (predicate a) [2..bits a]
  where predicate a c = ((a ==) . (`pow'` c) . (sqrt' a)) c

