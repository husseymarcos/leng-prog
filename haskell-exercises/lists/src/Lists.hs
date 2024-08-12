module Lists (member, union, intersection, difference,
              insert, insertionSort, firsts,
              binaryToDecimal, toDecimal, toDec, decimal,
              binaryAdd) where

import Data.Char(digitToInt)

member:: Int -> [Int] -> Bool
member _ []      = False
member e (x:xs)  = e == x || member e xs


union:: [Int] -> [Int] -> [Int]
union [] ys     = ys
union (x:xs) ys
  | member x ys = union xs ys
  | otherwise   = x : union xs ys

intersection:: [Int] -> [Int] -> [Int]
intersection [] _ = []
intersection (x:xs) ys =
  if member x ys then x : intersection xs ys
  else intersection xs ys

difference :: [Int] -> [Int] -> [Int]
difference [] _ = []
difference xs [] = xs
difference (x:xs) ys =
  if member x ys then difference xs ys
  else x : difference xs ys


insert:: Int -> [Int] -> [Int]
insert x [] = [x]
insert x (y:ys) =
  if x >= y then y : insert x ys
  else  x : (y:ys)

insertionSort :: [Int] -> [Int]
insertionSort = foldr insert []

binaryToDecimal :: [Int] -> Int
binaryToDecimal [] = 0
binaryToDecimal (x:xs) = x * 2 ^ length xs + binaryToDecimal xs


reverseList :: [Int] -> [Int]
reverseList [] = []
reverseList (x:xs) =
  reverseList xs ++ [x]

toDecimal :: Int -> [Int] -> Int
toDecimal = error "Implement it"

toDec::Int -> String -> Int
toDec base s = error "Implement it"

-- Same as `toDec` But use a list comprehension

decimal::Int -> String -> Int
decimal  = error "Implement it"

firsts::[a] -> [[a]]
firsts = error "Implement it"

-- Given two String that represents numbers in binary implement the 'binaryAdd' function
-- DO NOT USE a predefined '+' operation

binaryAdd::String -> String -> String
binaryAdd  = error "Implement it"
