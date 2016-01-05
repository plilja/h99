module P32 where

gcd' :: Int -> Int -> Int
gcd' a 0 = 0
gcd' a b = gcd b (a `mod` b)
