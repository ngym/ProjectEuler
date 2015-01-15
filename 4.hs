import GHC.Exts
    
main :: IO ()
main = print $ solve . reverse . sortWith (\(a,_,_) -> a) $ [(x*y, x, y) | x<-[999,998..100], y<-[999,998..100]]

solve :: [(Int, Int, Int)] -> (Int,Int,Int)
solve [] = (0,0,0)
solve (n@(prod,_,_):ns)
    | check $ show prod = n
    | otherwise         = solve ns

check :: String->Bool
check [] = True
check [_] = True
check xs = let top = head xs
               bot = last xs
               mid = tail . reverse . tail $ xs
          in (top == bot) && check mid

