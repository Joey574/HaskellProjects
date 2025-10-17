import System.IO
import Text.Printf (printf)
import Data.List
import Data.Bits


main :: IO ()
main = do
    putStr "Enter number of fibonacci to compute: "
    hFlush stdout

    input <- getLine
    let n = read input :: Int

    printf "Computing %d series of fibonacci\n" n
    let res = fibs !! n
    print res

-- this is a slightly better approach, still not best
fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

-- this is the basic naive approach that i ran with
fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)
