compress :: (Eq a) => [a] -> [a]
compress [] = []
compress (x:[]) = [x]
compress (x:y:t) = if x == y then compress ([y] ++ t) else [x] ++ compress ([y] ++ t)
