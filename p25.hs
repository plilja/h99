import System.Random

rndPermu' :: StdGen -> [a] -> [a]
rndPermu' _ [] = []
rndPermu' rnd (x:xs) = let n = length xs
                           pos = head $ randomRs (0, n) rnd
                           (hs, ts) = splitAt pos xs
                           hsPerm = rndPermu' rnd hs
                           tsPerm = rndPermu' rnd ts
                       in hsPerm ++ [x] ++ tsPerm

rndPermu xs = do g <- newStdGen
                 return (rndPermu' g xs)
