ultimo :: [Int] -> Maybe Int
ultimo [] = Nothing
ultimo [x] = Just x
ultimo (_:xs) = ultimo xs

main = do
 print(ultimo [1, 2, 3])
