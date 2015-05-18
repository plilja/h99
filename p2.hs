myButLast :: [a] -> a
myButLast [] = error "No such element"
myButLast (a:b:[]) = a
myButLast (a:x) = myButLast x
