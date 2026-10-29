body :: [a] -> Maybe [a]
body [] = Nothing
body [_] = Nothing
body [_, _] = Nothing
body xs = Just (take (length xs - 2) (drop 1 xs))

main :: IO ()
main = do
 print(body [1, 2, 3, 4])
 print(body [1])
 print(body ([] :: [Int]))
