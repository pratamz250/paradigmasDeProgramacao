main = do
 s <- getContents
 let n = map read (words s) :: [Int]
 print(sum n)
