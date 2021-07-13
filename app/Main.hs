module Main where

import Lib

main :: IO ()
main = do 
  let result = pow' 3 4
  print result
