type Operation = [Char]

main :: IO ()
main = do
    putStrLn "Enter an expression"
    input <- getLine
    let result = parse input
    print result

parse :: String -> Float
parse "" = 0.0
