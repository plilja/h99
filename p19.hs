rotate :: [a] -> Int -> [a]
rotate xs 0 = xs
rotate xs a = let n = length xs
                  a' = a `mod` n
                  a'' = if a' < 0 then a' + n else a'
                  (hs, ts) = splitAt (a'') xs
              in ts ++ hs
