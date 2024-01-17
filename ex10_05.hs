adder :: IO ()
adder = do putStrLn "How many numbers? "
           numStr <- getLine
           let num = read numStr :: Int
           numStrs <- sequence (replicate num getLine)
           putStrLn ("The total is " ++ show (sum (map read numStrs)))
           return ()
