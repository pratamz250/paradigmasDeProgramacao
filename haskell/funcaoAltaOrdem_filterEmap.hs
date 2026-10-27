main :: IO ()
main = do
 print(map (\x -> x * 2) (filter even [1, 2, 3, 4]))
