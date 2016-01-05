import P26
import Data.List

group' :: Eq a => [Int] -> [a] -> [[[a]]]
group' [] _ = [[]]
group' _ [] = []
group' (a:as) xs = let aCombs = combinations a xs
                    in [[c] ++ cs | c <- aCombs, cs <- group' as (xs \\ c)]

