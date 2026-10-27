apresenta :: (String, Int) -> String
apresenta (nome, idade) = nome ++ " tem " ++ show idade ++ " anos "

main :: IO ()
main = print (apresenta("Isaac", 25))
