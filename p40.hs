module P40 where

import P39

goldbach n = let ps = primesR 2 n
              in head [(a, b) | a <- ps, b <- ps, a + b == n]
