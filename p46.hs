and' True True = True
and' _ _ = False

or' True _ = True
or' _ True = True
or' _ _ = False

xor' True s = not s
xor' False s = s

nand' a b = not $ and' a b

nor' a b = not $ or' a b

impl False _ = True
impl True s = s

equ a b = a == b

table predicate = do let range = [False, True]
                     let values = [(x, y, predicate x y) | x <- range, y <- range]
                     mapM_ (\(x, y, v) -> putStrLn $ show x ++ " " ++ show y ++ " " ++ show v) values
