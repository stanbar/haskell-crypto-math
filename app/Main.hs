module Main where

import Lib (pow', sqrt', gcd', divisors, nthPrime, nPrimes, relativePrimes, totient, isRelativePrime)

main :: IO ()
main = do 
  let powered = pow' 3 4
      sqrd = sqrt' 81 4
      gcded = gcd' 12 8
      divids = divisors 12
      sixthPrime = nthPrime 20
      sixPrimes = nPrimes 20
      isRelativePrimeNineSix = isRelativePrime 9 6
      isRelativePrimeNineEight = isRelativePrime 9 8
      relativePrimesToOneHundred = relativePrimes 20
      totientOneHoundred = totient 20

  print powered
  print sqrd
  print gcded
  print divids
  print sixthPrime
  print sixPrimes
  print isRelativePrimeNineSix
  print isRelativePrimeNineEight
  print relativePrimesToOneHundred
  print totientOneHoundred
