module P41 where

import P39
import P40

goldbachList a b | rem a 2 == 0 = map goldbach [a,a+2..b]
                 | otherwise = goldbachList (a+1) b

goldbachListPlus a b lim = let ps = primesR (maximum [3, lim]) b
                            in [(a, b) | a <- ps, b <- ps, a < b]

