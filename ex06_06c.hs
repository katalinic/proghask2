replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n a = a : replicate' (n - 1) a