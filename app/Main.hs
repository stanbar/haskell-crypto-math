module Main where

import Lib (pow', sqrt', gcd', dividors, nthPrime, nPrimes, totient, isRelativePrime)

main :: IO ()
main = do 
  let powered = pow' 3 4
      sqrd = sqrt' 81 4
      gcded = gcd' 12 8
      divids = dividors 12
      sixthPrime = nthPrime 20
      sixPrimes = nPrimes 20
      totientOneHoundred = totient 100
      isRelativePrimeNineSix = isRelativePrime 9 6
      isRelativePrimeNineEight = isRelativePrime 9 8
  print powered
  print sqrd
  print gcded
  print divids
  print sixthPrime
  print sixPrimes
  print totientOneHoundred
  print isRelativePrimeNineSix
  print isRelativePrimeNineEight
