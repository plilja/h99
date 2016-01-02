
slice :: [a] -> Int -> Int -> [a]
slice (x:xs) _ 1 = [x]
slice (x:xs) 1 b = (x:slice xs 1 (b-1))
slice (x:xs) a b = slice xs (a-1) (b-1)
