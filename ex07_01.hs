result :: (a -> b) -> (a -> Bool) -> [a] -> [b]
result f p xs = map f (filter p xs)