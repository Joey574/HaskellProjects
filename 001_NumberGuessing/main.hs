cLength :: [a] -> Integer
cLength [] = 0
cLength (x:xs) = 1 + cLength xs

head :: [a] -> a
head(x:xs) = x

tail :: [a] -> [a]
tail(x:xs) = xs

quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort [y | y <- xs, y < x ] ++ [x] ++ quicksort [y | y <- xs, y >= x]
