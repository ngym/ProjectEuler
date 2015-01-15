main = putStrLn $ show counter

counter = sum $ map singlecounter [1..1000]

-- n個に分割
singlecounter n = n**1000 - dup 
                  
dup = 

