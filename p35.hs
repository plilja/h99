intSqrt :: Int -> Int
intSqrt n = floor $ sqrt $ fromIntegral n

primeFactors' :: Int -> Int -> Int -> [Int]
primeFactors' s lim 1 = []
primeFactors' s lim n
    | s > lim = [n]
    | rem n s == 0 = let r = n `div` s
                    in s:primeFactors' s (intSqrt r) (r)
    | otherwise = primeFactors' (s+1) lim n

primeFactors :: Int -> [Int]
primeFactors n = primeFactors' 2 (floor (sqrt (fromIntegral n))) n
