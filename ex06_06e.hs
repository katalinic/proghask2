elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' k (x:xs) = x == k || elem' k xs 