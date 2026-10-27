soma10 :: Int -> Int
soma10 x = x + 10

dobro :: Int -> Int
dobro x = x * 2

main :: IO ()
main = do
 print((soma10 . dobro)9)
