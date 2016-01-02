removeAt :: Int -> [a] -> (a, [a])
removeAt 1 (x:xs) = (x, xs)
removeAt n (x:xs) = let (elem, ts) = removeAt (n - 1) xs
                    in (elem, x:ts)

