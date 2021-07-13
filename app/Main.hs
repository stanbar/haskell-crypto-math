module Main where

import Lib (pow', sqrt')

main :: IO ()
main = do 
  let powered = pow' 3 4
      sqrd = sqrt' 81 4
  print powered
  print sqrd
