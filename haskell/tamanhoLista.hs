tamanho :: [a] -> Int
tamanho [] = 0
tamanho (_:xs) = 1 + tamanho xs

main :: IO ()
main = print (tamanho [1, 2, 3])
