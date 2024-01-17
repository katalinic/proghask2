-- sequence_ :: [IO a] -> IO ()
putStr :: String -> IO ()
putStr xs = sequence_ [putChar x | x <- xs]

putStr' :: String -> IO ()
putStr' xs = sequence_ (map putChar xs)