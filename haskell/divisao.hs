divisao :: Int -> Int -> Either String Int
divisao _ 0 = Left "Divisao por zero"
divisao x y = Right (x `div` y)

main = do
 print(divisao 4 5)
 print(divisao 9 0)
