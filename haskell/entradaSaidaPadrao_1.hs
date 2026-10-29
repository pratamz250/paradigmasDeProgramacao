main :: IO ()
main = do
 putStrLn "Insara uma string: "
 s <- getLine
 putStrLn $ "A string inserida: " ++ s ++ "."
