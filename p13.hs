data ListItem a = Single a | Multiple Int a
    deriving (Show)

encodeDirectHelper :: (Eq a) => a -> ListItem a -> [ListItem a]
encodeDirectHelper x (Single y)
                | x == y        = [Multiple 2 x]
                | otherwise     = [Single x, Single y]
encodeDirectHelper x (Multiple n y)
                | x == y        = [Multiple (n + 1) x]
                | otherwise     = [Single x, Multiple n y]

encodeDirect :: (Eq a) => [a] -> [ListItem a]
encodeDirect [] = []
encodeDirect (x:[]) = [Single x]
encodeDirect (x:xs) =
                    let rec = encodeDirect xs
                    in (encodeDirectHelper x (head rec)) ++ (tail rec)

