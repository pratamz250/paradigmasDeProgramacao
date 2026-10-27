primeiroOuZero :: [Int] -> Int
primeiroOuZero [] = 0
primeiroOuZero (x:_) = x

main :: IO ()
main = do
 print(primeiroOuZero [1, 2, 3])
 print(primeiroOuZero [2, 3])
 print(primeiroOuZero [])
