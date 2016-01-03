insertAt :: a -> [a] -> Int -> [a]
insertAt y xs 1 = y:xs
insertAt y (x:xs) n = x:insertAt y xs (n - 1)
