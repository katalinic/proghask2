type Board = [Int]

putRow :: Int -> Int -> IO ()
putRow row num = do putStr (show row)
                    putStr ": "
                    putStrLn (concat (replicate num "* "))

putBoardWithRow :: Int -> Board -> IO ()
putBoardWithRow _ [] = return ()
putBoardWithRow r (b:bs) = do putRow r b
                              putBoardWithRow (r + 1) bs

putBoard :: Board -> IO ()
putBoard = putBoardWithRow 1