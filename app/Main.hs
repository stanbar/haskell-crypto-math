module Main where

import Lib (pow', sqrt', gcd')

main :: IO ()
main = do 
  let powered = pow' 3 4
      sqrd = sqrt' 81 4
      gcded = gcd' 12 8
  print powered
  print sqrd
  print gcded
