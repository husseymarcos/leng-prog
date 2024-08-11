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

-- intersection:: [Int] -> [Int] -> [Int]
-- -- Me fijo si una lista esta vacia devuelvo otra lista vacia
-- intersection [] _ = []
-- -- Agarro un elemento de la primera lista
-- intersection (x:xs) ys =
--   -- Si es miembro de la segunda lista lo concateno con la interseccion del resto de la primera lista con la segunda
--   if member x ys then x : intersection xs ys
--   -- Sino sigo con el resto de la lista
--   else intersection xs ys

intersection:: [Int] -> [Int] -> [Int]
intersection [] _ = []
intersection (x:xs) ys =
  if member x ys then x : intersection xs ys
  else intersection xs ys


-- difference:: [Int] -> [Int] -> [Int]
-- -- Si la segunda lista esta vacia devuelvo la primera
-- difference xs [] = a
-- difference [] ys = []
-- -- Si las listas son iguales devolver una lista vacia 
-- difference _ _ = []
-- -- Agarro un elemento de y y me fijo si pertenece a 
-- difference (x:xs) ys = 
--   -- Si el elemento de la segunda lista es parte de la primera entonces seguir
--   if member x ys then difference xs ys
--   -- Si no es parte entonces agregar x a la lista y seguir con 
--   else  x : difference xs ys


difference :: [Int] -> [Int] -> [Int]
difference [] _ = []
difference xs [] = xs
difference (x:xs) ys = 
  if member x ys then difference xs ys  
  else x : difference xs ys


insert:: Int -> [Int] -> [Int]
insert = error "Implement it"

insertionSort :: [Int] -> [Int]
insertionSort = error "Implement it"

binaryToDecimal :: [Int] -> Int
binaryToDecimal = error "Implement it"


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
