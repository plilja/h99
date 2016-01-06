and' [] = True
and' (x:xs) = x && and' xs

or' [] = False
or' (x:xs) = x || or' xs

xor' [] = False
xor' (True:xs) = not $ or' xs
xor' (False:xs) = xor' xs

nand' xs = not $ and' xs

nor' xs = not $ or' xs

equ xs = (and' xs) || (not (or' xs))

picks :: [a] -> Int -> [[a]]
picks _ 0 = [[]]
picks xs n = [x:ys | x <- xs, ys <- picks xs (n - 1)]

table predicate numValues = do let picks' = picks [False, True] numValues
                               let values = [(pick, predicate pick) | pick <- picks']
                               mapM_ (\(x, v) -> putStrLn $ show x ++ " " ++ show v) values
