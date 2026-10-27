dobro :: Int -> Int
dobro x = x * 2

aplica :: (Int -> Int) -> Int -> Int
aplica f x = f x

main :: IO ()
main = do
 print(aplica dobro 5)
