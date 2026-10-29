second :: [a] -> Maybe a
second [] = Nothing
second [x] = Nothing
second xs = Just (head (drop 1 xs))

main :: IO ()
main = do
 print(second [1, 2, 3])
 print(second [1])
 print(second ([] :: [Int]))
