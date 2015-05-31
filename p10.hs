import P9

encode :: (Eq a) => [a] -> [(Int, a)]
encode [] = []
encode xs = map (\s -> (length s, head s)) (pack xs)

