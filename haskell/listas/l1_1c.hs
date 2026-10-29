median :: [a] -> Maybe a
median [] = Nothing
median xs = 
 if length xs `mod` 2 == 0
 then Just (head (drop (length xs `div` 2 - 1) xs))
 else Just (head (drop (length xs `div` 2) xs))

main :: IO ()
main = do
 print(median [1, 2, 3, 4, 5])
 print(median [1, 2, 3, 4])
 print(median ([] :: [Int]))
