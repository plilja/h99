import System.Random

rndSelect :: [a] -> Int -> IO [a]
rndSelect vals n = do g <- newStdGen
                      let indices = take n $ randomRs (0, length vals - 1) g
                      return (map (\i -> vals !! i) indices)
