import Control.Applicative

main :: IO ()
main = print <$> sum $ filter (\x ->  or[(x `mod` 3) == 0, (x `mod` 5) == 0]) [1..999]


