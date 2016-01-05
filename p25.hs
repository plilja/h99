import System.Random

rndPermu' :: StdGen -> [a] -> [a]
rndPermu' _ [] = []
rndPermu' rnd (x:xs) = let n = length xs
                           pos = head $ randomRs (0, n) rnd
                           xs' = rndPermu' rnd xs
                           (hs, ts) = splitAt pos xs'
                       in hs ++ [x] ++ ts

rndPermu xs = do g <- newStdGen
                 return (rndPermu' g xs)
