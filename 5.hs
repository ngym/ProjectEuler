import Data.Numbers.Primes

ceil_num :: Integer
ceil_num = 20

main :: IO ()
main = print $ product . map mult . filter isPrime $ [2..ceil_num]

mult :: Integer -> Integer
mult x = mult_ x x

mult_::Integer->Integer->Integer
mult_ x m 
    | m*x > ceil_num = m
    | otherwise = mult_ x $ m*x
      
