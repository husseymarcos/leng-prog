module CollatzConjecture (collatz) where

-- First iteration (pure function)
collatz :: Integer -> Maybe Integer
collatz n = if n <=0 then Nothing else collatzsWithSteps n 0
    where
        collatzsWithSteps 1 steps = Just steps
        collatzsWithSteps a steps = 
            if even a then collatzsWithSteps (a `div` 2) (steps + 1)
            else collatzsWithSteps ((3 * a) + 1) (steps + 1) 


-- Second iteration (with aux function)
-- collatz :: Integer -> Maybe Integer
-- collatz n = if n <=0 then Nothing else collatzWithSteps n 0


-- collatzWithSteps :: Integer -> Integer -> Maybe Integer
-- collatzWithSteps 1 steps = Just steps
-- collatzWithSteps a steps = 
--     if even a then collatzWithSteps (a `div` 2) (steps + 1)
--     else collatzWithSteps ((3 * a) + 1) (steps + 1) 
