data Tree a = Leaf a | Node (Tree a) (Tree a)

halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

balance :: [a] -> Tree a
balance [x] = Leaf x
balance xs = Node (balance l) (balance r)
             where (l, r) = halve xs