import Control.Applicative
main = print <$> sum $ filter even $ fib [2,1] 

fib :: [Int] -> [Int]
fib al@(x0:xs)
  | xs == [] = fib $ x0+1:al
  | x0 + head xs < 4000000 = fib $ x0 + head xs:al
  | otherwise = al
