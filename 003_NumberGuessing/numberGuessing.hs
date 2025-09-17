import System.Random
import Text.Printf (printf)

mainLoop :: IO ()
mainLoop = do
    putStrLn "Guess a number (1-10)"
    input <- getLine
    let guess = read input :: Int
    correct <- randomRIO (1, 10) :: IO Int
    if guess == correct then
        putStrLn "Nice Job you did it!"
    else do
        printf "Try again, the number was (%d)\n" correct
        mainLoop
    
main :: IO ()
main = mainLoop
