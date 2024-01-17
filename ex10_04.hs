adderHelper :: Int -> Int -> IO ()
adderHelper 0 total = do putStrLn ("The total is " ++ show total)
adderHelper n total = do valStr <- getLine
                         let val = read valStr :: Int
                         adderHelper (n - 1) (total + val)
                         

adder :: IO ()
adder = do putStrLn "How many numbers? "
           numStr <- getLine
           let num = read numStr :: Int
           adderHelper num 0
