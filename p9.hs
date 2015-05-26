pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:[]) = [[x]]
pack (x:xs) = 
        let rec = pack xs
        in if x == (head (head rec)) then [[x] ++ head rec] ++ tail rec else [[x]] ++ rec

