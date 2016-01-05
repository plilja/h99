module P39 where

sieve' (p:ns) = p:sieve' [n | n <- ns, rem n p /= 0]

sieve = sieve' [2..]

primesR a b = takeWhile (<=b) $ dropWhile (<a) $ sieve
