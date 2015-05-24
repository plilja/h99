myLength :: [a] -> Int
myLength [] = 0
myLength (_:a) = 1 + myLength(a)
