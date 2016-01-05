import qualified GHC.Exts as E
import qualified Data.Map as M

lsort :: [[a]] -> [[a]]
lsort xs = E.sortWith (\a -> length a) xs


lfsort :: [[a]] -> [[a]]
lfsort xs = let freq = foldl (\acc x -> M.insertWith (+) (length x) 1 acc) M.empty xs
             in E.sortWith (\a -> freq M.! (length a)) xs
