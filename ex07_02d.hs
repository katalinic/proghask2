dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' p [] = []
dropWhile' p (x:xs) | p x = []
                    | otherwise = x : dropWhile' p xs