module Main where

main :: IO ()
main = do
  let sol = countIncreasing example
  putStrLn $ "1st example: " <> show sol <> " measurements are larger than the previous ones"
  puzzle_input <- loadPuzzleInput
  let part1 = countIncreasing puzzle_input
  putStrLn $ "Solution to part 1: " <> show part1

countIncreasing :: [Int] -> Int
countIncreasing [] = 0
countIncreasing measurements =
    length
  . filter (>0)
  $ zipWith (-) (tail measurements) measurements

example :: [Int]
example =
  [ 199
  , 200
  , 208
  , 210
  , 200
  , 207
  , 240
  , 269
  , 260
  , 263
  ]

loadPuzzleInput :: IO [Int]
loadPuzzleInput = fmap (fmap read . lines) . readFile $ "inputs/day01.txt"
