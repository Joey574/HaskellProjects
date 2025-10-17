-- Conway's Game of Life, on the terminal, in haskell

update :: [[Int]] -> [[Int]]
update [[]] = [[]]


main :: IO ()
main = do
    let size = 20 :: Int
    let game = []
    print size