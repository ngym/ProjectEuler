main = print $ abs . (\xs -> (sum . map (^2) $ xs) - ((^2) . sum $ xs)) $ [1..100]
