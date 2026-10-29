data Pessoa = Pessoa String Int
 deriving (Show)

apresentar :: Pessoa -> String
apresentar (Pessoa nome idade) = 
 nome ++ " tem " ++ show idade ++ " anos."

main :: IO ()
main = do
 putStrLn(apresentar (Pessoa "Ana" 25))
