main = print $ (\(a,b,c) -> (a*b*c,a,b,c)) . solve $ (1,1,998)

solve :: (Int, Int, Int) -> (Int, Int, Int)
solve arg@(_,_,0) = arg
solve (a,b,c)
      | c^2 == a^2 + b^2 = (a,b,c)
      | a+1 > b-1 = solve (1, a+b, c-1)
      | otherwise = solve (a+1,b-1,c)
