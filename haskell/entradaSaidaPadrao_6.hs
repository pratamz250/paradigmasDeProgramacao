main = do
 entrada <- getContents
 let numeros = map read (words entrada) :: [Int]
 print numeros
