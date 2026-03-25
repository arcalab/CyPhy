module MyLang where

--------------------------------------------------
----- Part 1 -------------------------------------
--------------------------------------------------

-- Define a type for variables in our language.
data Vars = X1 | X2 deriving (Show,Eq)

-- A State is represented as a function mapping variables to integer values.
type State = Vars -> Int

-- Define the syntax for arithmetic expressions (AExp).
data AExp 
    = VAE Vars          -- Variable in an arithmetic expression
    | I Int             -- Integer constant (should be represented differently)
    | Sum AExp AExp     -- Addition of two arithmetic expressions
    | Mult AExp AExp    -- Multiplication of two arithmetic expressions
    deriving Show

-- Write down a few examples of simple arithmetic expressions
-- e.g. 
x1PlusOne = Sum (VAE X1) (I 1)
x2PlusTwo = Sum (VAE X2) (I 2)
tenPlusx2 = Sum (I 10) (VAE X2)
more = Mult x1PlusOne x2PlusTwo
-- ....

state1 :: Vars -> Int
state1 = \_ -> 0
state2 :: Vars -> Int
state2 = \x -> if x == X1 then 2 else 3

-- Semantics of arithmetic expressions
semAE :: AExp -> State -> Int
semAE = undefined

--------------------------------------------------
--------------------------------------------------
--------------------------------------------------

--------------------------------------------------
----- Part 2 -------------------------------------
--------------------------------------------------

-- Syntax for boolean expressions (BExp)
data BExp 
    = LE AExp AExp      -- Less than or equal comparison between two arithmetic expressions
    | Tt                -- Boolean constant: True
    | Ff                -- Boolean constant: False 
    | Neg BExp          -- Boolean negation
    | And BExp BExp     -- Boolean conjunction (AND operation)
    deriving Show

-- Syntax for programs (Prog)
data Prog 
    = Asg Vars AExp        -- Assignments
    | Seq Prog Prog        -- Sequential composition 
    | Cond BExp Prog Prog  -- Conditionals
    | While BExp Prog      -- While loops
    deriving Show

-- Write down a few examples of simple programs 
-- e.g. 
x1PlusOne_Seq_x2PlusTwo = Seq (Asg X1 x1PlusOne) (Asg X2 x2PlusTwo)
divergence = While Tt (Asg X1 x1PlusOne) 
-- ....

-- Semantics of boolean expressions
semBE :: BExp -> State -> Bool
semBE = undefined 

-- Semantics of programs
semProg :: Prog -> State -> State
semProg = undefined

-- Auxiliary function for defining 
-- the semantics of programs
chMem :: Vars -> Int -> State -> State
chMem = undefined

--------------------------------------------------
--------------------------------------------------
--------------------------------------------------

--------------------------------------------------
----- Part 3 (Challenge !!) ----------------------
--------------------------------------------------

-- Syntax for programs can produce exceptions
data EProg 
    = EAsg Vars AExp        -- Assignments
    | ESeq EProg EProg        -- Sequential composition 
    | ECond BExp EProg EProg  -- Conditionals
    | EWhile BExp EProg      -- While loops
    | Err
    deriving Show

-- Semantics of programs that can produce exceptions
semEProg :: Prog -> State -> Maybe State
semEProg = undefined
