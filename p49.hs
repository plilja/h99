grey :: Int -> [String]
grey 1 = ["0", "1"]
grey n = let g = grey (n - 1)
             g1 = concat $ repeat $ [grey 1, (reverse (grey 1))]
          in [gPrev ++ x | (gPrev, g1') <- zip g g1, x <- g1']
