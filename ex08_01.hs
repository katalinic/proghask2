data Nat = Zero | Succ Nat deriving Show

add' :: Nat -> Nat -> Nat
add' m Zero = m
add' m (Succ n) = Succ (add' m n)

mult' :: Nat -> Nat -> Nat
mult' m Zero = m
mult' m (Succ n) = add' m (mult' m n)