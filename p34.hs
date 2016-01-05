import P33

totient n = length $ filter (coprime n) [1..n]
