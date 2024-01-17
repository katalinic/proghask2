any' :: (a -> Bool) -> [a] -> Bool
any' _ [] = False
any' p (x:xs) = p x || any' p xs 

any'' :: (a -> Bool) -> [a] -> Bool
any'' p xs = foldr (||) False (map p xs)
