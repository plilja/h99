module P37 where

import P36

totientAlt = foldl (\acc (p, m) -> acc * (p - 1) * p ^ (m - 1)) 1 . primeFactorsMult

