(^) :: Int -> Int -> Int
_ ^ 0 = 1
x ^ y = x * x Main.^ (y - 1)