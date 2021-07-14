import Lib (divisors, gcd', isRelativePrime, nPrimes, nthPrime, pow', relativePrimes, sqrt', totient, isPrime)

main :: IO ()
main = do
  putStrLn "Test"
  putStrLn $ if pow' 3 4 == 81 then "Ok" else "False"
  putStrLn $ if pow' 4 3 == 64 then "Ok" else "False"

  putStrLn $ if sqrt' 81 2 == 9 then "Ok" else "False"

  putStrLn $ if gcd' 12 8 == 4 then "Ok" else "False"

  putStrLn $ if divisors 12 == [4, 3, 6, 2, 1, 12] then "Ok" else "False"

  putStrLn $ if nthPrime 20 == 71 then "Ok" else "False"

  putStrLn $ if nPrimes 20 == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71] then "Ok" else "False"

  putStrLn $ if not $ isRelativePrime 9 6 then "Ok" else "False"

  putStrLn $ if isRelativePrime 9 7 then "Ok" else "False"

  putStrLn $ if relativePrimes 20 == [1, 3, 7, 9, 11, 13, 17, 19] then "Ok" else "False"

  putStrLn $ if totient 20 == 8 then "Ok" else "False"

  putStrLn $ if isRelativePrime 9 7 `implies` (totient (9 * 7) == totient 9 * totient 7) then "Ok" else "False"
  putStrLn $ if isRelativePrime 9 6 `implies` (totient (9 * 6) == totient 9 * totient 6) then "Ok" else "False"

  putStrLn $ if not $ isPrime 9 then "Ok" else "False"
  putStrLn $ if not $ isPrime 10  then "Ok" else "False"
  putStrLn $ if isPrime 7 then "Ok" else "False"

  putStrLn $ if isPrime 7 `implies` (totient(7^4) == 7^4 - 7^(4-1))  then "Ok" else "False"

  return ()


implies :: Bool -> Bool -> Bool
implies a b = if a then b else True
