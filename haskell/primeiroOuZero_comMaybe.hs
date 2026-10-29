primeiro :: [a] -> Maybe a
primeiro [] = Nothing
primeiro (x:_) = Just x

main :: IO ()
main = do
 print(primeiro [1, 2, 3])
 print(primeiro ([] :: [Int]))
