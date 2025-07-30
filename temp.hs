-- https://en.wikibooks.org/wiki/Haskell/Type_basics
r = 5.0 -- varaibles start with lowercase but can have _'
{- use ghci, then :l this, then type r-}
area r = pi * r ^ 2
heron a b c = sqrt ( s * (s - a) * (s - b) * (s - c) )
	where
	s = (a + b + c) / 2
heron2 a b c = let s = (a + b + c) / 2
    in sqrt ( s * (s - a) * (s - b) * (s - c) )
(>=) (9 + 4) 13 -- evaluating 2 == True -> error
x /= y = not (x == y) -- but we use && and ||???
absolute x -- haskell already gives `abs`
    | x < 0 = -x
    | otherwise = x -- otherwise is defined as True
absolute (-10) -- subtract > negative
'H' -- use :type in ghci -> :: Char
"Hello," ++ " world!" -- :: [Char] (String is a synonym)
not True -- :: Bool -> Bool
xor :: Bool -> Bool -> Bool -- signature
xor p q = (p || q) && not (p && q)
nums = [1, 2, 3, 4] -- no mixed types: all Int
0 : nums --[0,1,2,3,4]
True : False : [] -- True:False -> error: False must be a list
[[1,2],[3,4,5],[6]]
(True, "Hello", 1, 'a', [()]) -- tuple
tail [1, 2, 3] -- [2, 3]
-- head :: [a] -> a; a is a type variable
{- (+) :: (Num a) => a -> a -> a; Num is a typeclass, 
 and a must be an instance of Num -}
-2147483648 -- :: Int(?)
98349827347266758734310 -- :: Integer(?)
67453.01801237 -- :: Double (or Float)(?)
(-7) -- :: (Num a) => a! -7 is polymorphic
4 / fromIntegral (length [1,2,3])
mySignum x =
    if x < 0 
        then -1 -- then clause is required
        else if x > 0 -- so is else clause
            then 1
            else 0
-- pattern matching
pts :: Int -> Int
pts 1 = 10
pts 2 = 6
pts 3 = 4
pts 4 = 3
pts 5 = 2
pts 6 = 1
pts _ = 0
myOr :: Bool -> Bool -> Bool
True  || _ = True
False || y = y
mySquare x = x ^ 2
squareOfPts = mySquare . pts
-- Let's use the Prelude library!
revWords :: String -> String
revWords = unwords . reverse . words
-- that was easy.
