main :: IO()
main = print $ solve 2 600851475143

solve :: Integer -> Integer -> Integer
solve n target
    | n^2 >  600851475143 = target
    | target `div` n == 1 = target
    | target `mod` n == 0 = solve n . div target $ n
    | otherwise = solve (n+1) target





                
