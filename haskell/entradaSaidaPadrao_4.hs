dobro :: Int -> Int
dobro x = x * 2

aplica :: (Int -> Int) -> Int -> Int
aplica f x = f x

main :: IO ()
main = do
 putStrLn "Insira um numero: "
 linha <- getLine
 let n = read linha :: Int
 putStrLn $ "Dobro: " ++ show(aplica dobro n) ++ "."
