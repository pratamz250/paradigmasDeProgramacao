main :: IO ()
main = do
 print(filter (\x -> x > 5) [1, 2, 9])
 print(filter (\y -> y > 5) [1, 2, 6])
