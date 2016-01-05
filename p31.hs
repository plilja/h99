isPrime :: Int -> Bool
isPrime 1 = False
isPrime n = let lim = floor $ sqrt $ fromIntegral n
             in foldl (\acc x -> acc && rem n x /= 0) True [2..lim]
