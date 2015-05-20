
elementAt :: [a] -> Int -> a
elementAt [] _ = error "No such element"
elementAt (x:_) 1 = x
elementAt (_:t) i  
    | i <= 0    = error "No such element"
    | otherwise = elementAt t (i - 1)
