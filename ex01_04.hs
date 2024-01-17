qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
               where
                   smaller = [a | a <- xs, a <= x]
                   larger = [a | a <- xs, a > x]

qsortrev :: Ord a => [a] -> [a]
qsortrev [] = []
qsortrev (x:xs) = qsortrev larger ++ [x] ++ qsortrev smaller
               where
                   smaller = [a | a <- xs, a <= x]
                   larger = [a | a <- xs, a > x]