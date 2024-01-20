euclid :: Int -> Int -> Int
euclid x y | x == y = x
           | x < y = euclid x (y - x)
           | x > y = euclid (x - y) y