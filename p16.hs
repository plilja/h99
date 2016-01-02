dropEvery :: [a] -> Int -> [a]
dropEvery [] n = []
dropEvery xs n = let (hs, ts') = splitAt (n - 1) xs
                     ts = if null ts' then [] else (tail ts')
                 in hs ++ dropEvery ts n
