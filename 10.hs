import Data.Numbers.Primes as PR

main = print $ sum . takeWhile (\x -> x <= 2000000) $ PR.primes
