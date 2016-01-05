module P40 where

import P39

goldbachs n = let ps = primesR 2 n
              in [(a, b) | a <- ps, b <- ps, a + b == n]

goldbach n = head $ goldbachs n
