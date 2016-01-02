splitAt' :: [a] -> Int -> ([a], [a])
splitAt' xs n = (take n xs, drop n xs)
