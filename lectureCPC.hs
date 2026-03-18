{- Cyber-Physical Computation 2025/2026 - Recalling Haskell.
 - Why Haskell? We will use Haskell in this course to implement 
 - programming languages and respective semantics.
 - Goal: Solve the exercises listed below.
-}

module LectureCPC where

-- Programming 101 ---------------------------------------------------------

-- Implement the function that returns 
-- the maximum of two integers.
max' :: (Int,Int) -> Int
max' = undefined

-- Implement the function that returns 
-- the maximum of three integers.
max3 :: (Int,(Int,Int)) -> Int
max3 = undefined

-- Implement the function that scales 
-- a 2-dimensional real vector by a 
-- real number.
scaleV :: (Double, (Double,Double)) -> (Double, Double)
scaleV = undefined

-- Implement the function that adds up
-- two 2-dimensional real vectors
addV :: ((Double,Double),(Double,Double)) -> (Double, Double)
addV = undefined

-- Implement the function that calculates
-- the factorial of an integer
fact :: Int -> Int
fact = undefined

-- Implement the function that return the length
-- of a given list
len :: [a] -> Int
len = undefined

-- Implement the function that removes all
-- the even numbers from a given list
odds :: [Int] -> [Int]
odds = undefined

-- Implement Caesar Cypher with shift=3
-- https://en.wikipedia.org/wiki/Caesar_cipher
-- Suggestion: add "import Data.Char", and use
-- the functions "chr" and "ord"
ecode :: String -> String
ecode = undefined

dcode :: String -> String
dcode = undefined

-- Implement the insertionSort algorithm
iSort :: [Int] -> [Int]
iSort = undefined

-- Implement the quickSort algorithm (invented by T. Hoare 1934-2026)
qSort :: [Int] -> [Int]
qSort = undefined

-- Implement the solution to the Hanoi problem
-- this one is a bit harder, but not really :-)
hanoi :: Int -> a -> a -> a -> [(a,a)]
hanoi = undefined

---------------------------------------------------------------------------

-- Datatypes --------------------------------------------------------------

-- The datatype of leaf trees
data LTree a = Leaf a | Fork (LTree a, LTree a) deriving Show

-- Implement the function that increments all values
-- in a given leaf tree
incr :: LTree Int -> LTree Int
incr = undefined

-- Implement the function that counts the number of leafs
-- in a leaf tree 
count :: LTree Int -> Int
count = undefined

-- The datatype of binary trees
data BTree a = Empty | Node a (BTree a, BTree a) deriving Show

-- Implement the function that increments all values
-- in a given binary tree
bincr :: BTree Int -> BTree Int
bincr = undefined

-- Implement the function that counts the number of leafs
-- in a binary tree 
bcount :: BTree a -> Int
bcount = undefined

-- Implement the function that lists all elements of a binary
-- tree in a breadth-wise manner
blist :: BTree a -> [a]
blist = undefined

-- The datatype of "full" trees
data FTree a b = Tip a | Join b (FTree a b, FTree a b) deriving Show

-- Implement the function that sends a full tree into a leaf tree
fTree2LTree :: FTree a b -> LTree a
fTree2LTree = undefined

-- Implement the function that sends a full tree into a binary tree
fTree2BTree :: FTree a b -> BTree b 
fTree2BTree = undefined

---------------------------------------------------------------------------

-- Higher-order -----------------------------------------------------------

-- Build a function that receives a predicate and a list and returns a filtered
-- list according to the received predicate
filter' :: (a -> Bool) -> [a] -> [a] 
filter' = undefined

---------------------------------------------------------------------------

-- Laziness --------------------------------------------------------------

-- Provide the "infinite" list of factorial numbers, if possible not repeating
-- computations (cf. memoization)
lfact :: [Int]
lfact = undefined


-- Wait, wh-what ?
-- Build a function that given a predicate on **infinite lists** of Bools
-- return one such list that satisfies this predicate
-- This one is excitingly hard :-)
find :: ([Bool] -> Bool) -> [Bool]
forsome  :: ([Bool] -> Bool) -> Bool
forall'  :: ([Bool] -> Bool) -> Bool

find = undefined

-- hints ...
forsome p = p (find p)
forall' = not . forsome . (\p -> not . p)

---------------------------------------------------------------------------

