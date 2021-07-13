module Main where

import Lib (pow', sqrt', gcd', dividors, nthPrime)

main :: IO ()
main = do 
  let powered = pow' 3 4
      sqrd = sqrt' 81 4
      gcded = gcd' 12 8
      divids = dividors 12
      sixthPrime = nthPrime 20
  print powered
  print sqrd
  print gcded
  print divids
  print sixthPrime
