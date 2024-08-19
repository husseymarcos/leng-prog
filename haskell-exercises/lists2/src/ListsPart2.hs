{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
module ListsPart2 (Bit(..), bitAt, charToBits, bits, queens) where

import Data.Char(ord)  
import Data.Bits(testBit)
  
data Bit = F | T  deriving (Eq, Show, Enum, Read)
type Bits = [Bit]

bitAt :: Int -> Char -> Bit
bitAt n c = if testBit (ord c) (7-n) then T else F 

charToBits :: Char -> Bits
charToBits c = [bitAt i c | i <- [0..7]]

bits::String -> Bits
bits [] = []
bits (x:xs) = charToBits x ++ bits xs

-- bits :: String -> Bits
-- bits str = concat (map charToBits str)

type Solution = [Int]

queens::Int -> [Solution]
queens  = error "Implement It"