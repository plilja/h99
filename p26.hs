module P26 where

combinations :: Int -> [a] -> [[a]]
combinations 0 _ = [[]]
combinations _ [] = []
combinations n (x:xs) = [x:ys | ys <- combinations (n - 1) xs] ++
                        combinations n xs

