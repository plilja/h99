myLast :: [a] -> a
myLast [] = error "No such element"
myLast (x: []) = x
myLast (_: x) = myLast x



