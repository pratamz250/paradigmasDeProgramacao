vazia :: [a] -> Bool
vazia [] = True
vazia (_:_) = False

main :: IO ()
main = print (vazia [1, 2])
