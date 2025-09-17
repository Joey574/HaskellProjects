import System.IO

main :: IO ()
main = do
    putStr "Enter your name: "
    hFlush stdout
    name <- getLine 
    putStrLn $ "Hello " ++ name ++ "!"
