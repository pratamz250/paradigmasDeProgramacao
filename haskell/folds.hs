main :: IO ()
main = do
 print(foldr (+) 1 [1, 2, 3])
 print(foldl (-) 3 [1, 2, 3])
