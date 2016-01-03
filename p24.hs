import System.Random

diffSelect :: Int -> Int -> IO [Int]
diffSelect count upper = do g <- newStdGen
                            return (take count $ randomRs (1, upper) g)
