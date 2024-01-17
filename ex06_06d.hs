(!!) :: [a] -> Int -> a
(!!) xs 0 = head xs
(!!) xs n = (Main.!!) (tail xs) (n - 1)