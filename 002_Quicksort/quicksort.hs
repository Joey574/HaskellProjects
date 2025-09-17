main :: IO ()
main = do
    listStr <- getLine
    let list = read listStr :: [Int]
    let sorted = quicksort list
    print sorted

quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort [y | y <- xs, y<x] ++ [x] ++ quicksort [y | y <- xs, y>=x]
