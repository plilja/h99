data ListItem a = Single a | Multiple Int a
    deriving (Show)

decodeModified :: [ListItem a] -> [a]
decodeModified [] = []
decodeModified (Single a : xs) = [a] ++ decodeModified xs
decodeModified (Multiple n a : xs) = replicate n a ++ decodeModified xs
