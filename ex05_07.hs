result :: [(Integer, Integer)]
result = concat [[(x, y) | y <- [3,4]] | x <- [1,2]]