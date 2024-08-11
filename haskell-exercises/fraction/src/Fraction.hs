module Fraction (Fraction, add, sub, mul, divide, hcf) where

type Fraction = (Int, Int)

-- Implement the `add` Function

add :: Fraction -> Fraction -> Fraction
add n d = (n1 * d2 + d1 * n2, n2 * d2)
  where
      (n1, n2) = n
      (d1, d2) = d

-- Implement the `sub` Function

sub :: Fraction -> Fraction -> Fraction
sub n d = (n1 * d2 - d1 * n2, n2 * d2)
  where
    (n1, n2) = n
    (d1, d2) = d

-- Implement the `mul` Function

mul :: Fraction -> Fraction -> Fraction
mul n d = (n1 * d1, n2 * d2)
  where
      (n1, n2) = n
      (d1, d2) = d

-- Implement the `divide` Function

divide :: Fraction -> Fraction -> Fraction
divide n d = (n1 * d2, n2 * d1)
  where
      (n1, n2) = n
      (d1, d2) = d

-- Implement the `hcf` Function

hcf :: Int -> Int -> Int
hcf a b
  | a == b = a
  | a > b = hcf (a - b) b
  | otherwise = hcf a (b - a)
  