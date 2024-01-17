all' :: (a -> Bool) -> [a] -> Bool
all' _ [] = True
all' p (x:xs) = p x && all' p xs

all'' :: (a -> Bool) -> [a] -> Bool
all'' p xs = foldr (&&) True (map p xs)