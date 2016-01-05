import P35
import qualified Data.List as L

primeFactorsMult :: Int -> [(Int, Int)]
primeFactorsMult = map (\xs -> (head xs, length xs)) . L.group . primeFactors
