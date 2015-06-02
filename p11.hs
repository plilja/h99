import P10

data ListItem a = Single a | Multiple Int a
    deriving (Show)

encodeModified :: (Eq a) => [a] -> [ListItem a]
encodeModified xs = map (\s -> if fst s == 1 then Single (snd s) else Multiple (fst s) (snd s)) (encode xs)

