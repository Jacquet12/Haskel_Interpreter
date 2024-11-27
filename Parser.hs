{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,121) ([8416,584,0,14338,37384,48640,15,0,0,0,0,0,1052,57417,18464,1794,4673,0,0,12222,0,0,4208,33060,8323,7177,18692,8416,584,16647,14354,37384,16832,1168,33294,28708,9232,33665,2336,64480,32,32768,0,0,2104,146,14,28672,0,896,0,28,57344,0,52992,7,15928,0,0,2048,0,64,28672,9232,31745,159,0,57344,18464,63490,62,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","true","false","num","'+'","'-'","'*'","and","or","not","\"==\"","\">=\"","\"<=\"","'>'","'<'","if","then","else","'['","']'","','","var","%eof"]
        bit_start = st * 27
        bit_end = (st + 1) * 27
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..26]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (8) = happyShift action_6
action_0 (14) = happyShift action_7
action_0 (20) = happyShift action_8
action_0 (23) = happyShift action_2
action_0 (26) = happyShift action_9
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (23) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (6) = happyShift action_4
action_2 (7) = happyShift action_5
action_2 (8) = happyShift action_6
action_2 (14) = happyShift action_7
action_2 (20) = happyShift action_8
action_2 (23) = happyShift action_2
action_2 (26) = happyShift action_9
action_2 (4) = happyGoto action_23
action_2 (5) = happyGoto action_24
action_2 _ = happyReduce_21

action_3 (9) = happyShift action_13
action_3 (10) = happyShift action_14
action_3 (11) = happyShift action_15
action_3 (12) = happyShift action_16
action_3 (13) = happyShift action_17
action_3 (15) = happyShift action_18
action_3 (16) = happyShift action_19
action_3 (17) = happyShift action_20
action_3 (18) = happyShift action_21
action_3 (19) = happyShift action_22
action_3 (27) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 _ = happyReduce_4

action_7 (6) = happyShift action_4
action_7 (7) = happyShift action_5
action_7 (8) = happyShift action_6
action_7 (14) = happyShift action_7
action_7 (20) = happyShift action_8
action_7 (23) = happyShift action_2
action_7 (26) = happyShift action_9
action_7 (4) = happyGoto action_12
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (6) = happyShift action_4
action_8 (7) = happyShift action_5
action_8 (8) = happyShift action_6
action_8 (14) = happyShift action_7
action_8 (20) = happyShift action_8
action_8 (23) = happyShift action_2
action_8 (26) = happyShift action_9
action_8 (4) = happyGoto action_11
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_4
action_9 (7) = happyShift action_5
action_9 (8) = happyShift action_6
action_9 (14) = happyShift action_7
action_9 (20) = happyShift action_8
action_9 (23) = happyShift action_2
action_9 (26) = happyShift action_9
action_9 (4) = happyGoto action_10
action_9 _ = happyReduce_5

action_10 (9) = happyShift action_13
action_10 (10) = happyShift action_14
action_10 (11) = happyShift action_15
action_10 (12) = happyShift action_16
action_10 (13) = happyShift action_17
action_10 (15) = happyShift action_18
action_10 (16) = happyShift action_19
action_10 (17) = happyShift action_20
action_10 (18) = happyShift action_21
action_10 (19) = happyShift action_22
action_10 _ = happyReduce_6

action_11 (9) = happyShift action_13
action_11 (10) = happyShift action_14
action_11 (11) = happyShift action_15
action_11 (12) = happyShift action_16
action_11 (13) = happyShift action_17
action_11 (15) = happyShift action_18
action_11 (16) = happyShift action_19
action_11 (17) = happyShift action_20
action_11 (18) = happyShift action_21
action_11 (19) = happyShift action_22
action_11 (21) = happyShift action_37
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_12

action_13 (6) = happyShift action_4
action_13 (7) = happyShift action_5
action_13 (8) = happyShift action_6
action_13 (14) = happyShift action_7
action_13 (20) = happyShift action_8
action_13 (23) = happyShift action_2
action_13 (26) = happyShift action_9
action_13 (4) = happyGoto action_36
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_4
action_14 (7) = happyShift action_5
action_14 (8) = happyShift action_6
action_14 (14) = happyShift action_7
action_14 (20) = happyShift action_8
action_14 (23) = happyShift action_2
action_14 (26) = happyShift action_9
action_14 (4) = happyGoto action_35
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_4
action_15 (7) = happyShift action_5
action_15 (8) = happyShift action_6
action_15 (14) = happyShift action_7
action_15 (20) = happyShift action_8
action_15 (23) = happyShift action_2
action_15 (26) = happyShift action_9
action_15 (4) = happyGoto action_34
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_4
action_16 (7) = happyShift action_5
action_16 (8) = happyShift action_6
action_16 (14) = happyShift action_7
action_16 (20) = happyShift action_8
action_16 (23) = happyShift action_2
action_16 (26) = happyShift action_9
action_16 (4) = happyGoto action_33
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_4
action_17 (7) = happyShift action_5
action_17 (8) = happyShift action_6
action_17 (14) = happyShift action_7
action_17 (20) = happyShift action_8
action_17 (23) = happyShift action_2
action_17 (26) = happyShift action_9
action_17 (4) = happyGoto action_32
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (8) = happyShift action_6
action_18 (14) = happyShift action_7
action_18 (20) = happyShift action_8
action_18 (23) = happyShift action_2
action_18 (26) = happyShift action_9
action_18 (4) = happyGoto action_31
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (8) = happyShift action_6
action_19 (14) = happyShift action_7
action_19 (20) = happyShift action_8
action_19 (23) = happyShift action_2
action_19 (26) = happyShift action_9
action_19 (4) = happyGoto action_30
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_5
action_20 (8) = happyShift action_6
action_20 (14) = happyShift action_7
action_20 (20) = happyShift action_8
action_20 (23) = happyShift action_2
action_20 (26) = happyShift action_9
action_20 (4) = happyGoto action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (8) = happyShift action_6
action_21 (14) = happyShift action_7
action_21 (20) = happyShift action_8
action_21 (23) = happyShift action_2
action_21 (26) = happyShift action_9
action_21 (4) = happyGoto action_28
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_4
action_22 (7) = happyShift action_5
action_22 (8) = happyShift action_6
action_22 (14) = happyShift action_7
action_22 (20) = happyShift action_8
action_22 (23) = happyShift action_2
action_22 (26) = happyShift action_9
action_22 (4) = happyGoto action_27
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (9) = happyShift action_13
action_23 (10) = happyShift action_14
action_23 (11) = happyShift action_15
action_23 (12) = happyShift action_16
action_23 (13) = happyShift action_17
action_23 (15) = happyShift action_18
action_23 (16) = happyShift action_19
action_23 (17) = happyShift action_20
action_23 (18) = happyShift action_21
action_23 (19) = happyShift action_22
action_23 (25) = happyShift action_26
action_23 _ = happyReduce_19

action_24 (24) = happyShift action_25
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_1

action_26 (6) = happyShift action_4
action_26 (7) = happyShift action_5
action_26 (8) = happyShift action_6
action_26 (14) = happyShift action_7
action_26 (20) = happyShift action_8
action_26 (23) = happyShift action_2
action_26 (26) = happyShift action_9
action_26 (4) = happyGoto action_23
action_26 (5) = happyGoto action_39
action_26 _ = happyReduce_21

action_27 (9) = happyShift action_13
action_27 (10) = happyShift action_14
action_27 (11) = happyShift action_15
action_27 _ = happyReduce_17

action_28 (9) = happyShift action_13
action_28 (10) = happyShift action_14
action_28 (11) = happyShift action_15
action_28 _ = happyReduce_16

action_29 (9) = happyShift action_13
action_29 (10) = happyShift action_14
action_29 (11) = happyShift action_15
action_29 _ = happyReduce_15

action_30 (9) = happyShift action_13
action_30 (10) = happyShift action_14
action_30 (11) = happyShift action_15
action_30 _ = happyReduce_14

action_31 (9) = happyShift action_13
action_31 (10) = happyShift action_14
action_31 (11) = happyShift action_15
action_31 _ = happyReduce_13

action_32 (9) = happyShift action_13
action_32 (10) = happyShift action_14
action_32 (11) = happyShift action_15
action_32 (12) = happyShift action_16
action_32 (15) = happyShift action_18
action_32 (16) = happyShift action_19
action_32 (17) = happyShift action_20
action_32 (18) = happyShift action_21
action_32 (19) = happyShift action_22
action_32 _ = happyReduce_11

action_33 (9) = happyShift action_13
action_33 (10) = happyShift action_14
action_33 (11) = happyShift action_15
action_33 (15) = happyShift action_18
action_33 (16) = happyShift action_19
action_33 (17) = happyShift action_20
action_33 (18) = happyShift action_21
action_33 (19) = happyShift action_22
action_33 _ = happyReduce_10

action_34 _ = happyReduce_9

action_35 (11) = happyShift action_15
action_35 _ = happyReduce_8

action_36 (11) = happyShift action_15
action_36 _ = happyReduce_7

action_37 (6) = happyShift action_4
action_37 (7) = happyShift action_5
action_37 (8) = happyShift action_6
action_37 (14) = happyShift action_7
action_37 (20) = happyShift action_8
action_37 (23) = happyShift action_2
action_37 (26) = happyShift action_9
action_37 (4) = happyGoto action_38
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (9) = happyShift action_13
action_38 (10) = happyShift action_14
action_38 (11) = happyShift action_15
action_38 (12) = happyShift action_16
action_38 (13) = happyShift action_17
action_38 (15) = happyShift action_18
action_38 (16) = happyShift action_19
action_38 (17) = happyShift action_20
action_38 (18) = happyShift action_21
action_38 (19) = happyShift action_22
action_38 (22) = happyShift action_40
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_20

action_40 (6) = happyShift action_4
action_40 (7) = happyShift action_5
action_40 (8) = happyShift action_6
action_40 (14) = happyShift action_7
action_40 (20) = happyShift action_8
action_40 (23) = happyShift action_2
action_40 (26) = happyShift action_9
action_40 (4) = happyGoto action_41
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (9) = happyShift action_13
action_41 (10) = happyShift action_14
action_41 (11) = happyShift action_15
action_41 (12) = happyShift action_16
action_41 (13) = happyShift action_17
action_41 (15) = happyShift action_18
action_41 (16) = happyShift action_19
action_41 (17) = happyShift action_20
action_41 (18) = happyShift action_21
action_41 (19) = happyShift action_22
action_41 _ = happyReduce_18

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (List happy_var_2
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_2)
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (App (Var happy_var_1) happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Geq happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Leq happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Gt happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Lt happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 6 4 happyReduction_18
happyReduction_18 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_0  5 happyReduction_21
happyReduction_21  =  HappyAbsSyn5
		 ([]
	)

happyNewToken action sts stk [] =
	action 27 27 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTrue -> cont 6;
	TokenFalse -> cont 7;
	TokenNum happy_dollar_dollar -> cont 8;
	TokenAdd -> cont 9;
	TokenSub -> cont 10;
	TokenMul -> cont 11;
	TokenAnd -> cont 12;
	TokenOr -> cont 13;
	TokenNot -> cont 14;
	TokenEq -> cont 15;
	TokenGeq -> cont 16;
	TokenLeq -> cont 17;
	TokenGt -> cont 18;
	TokenLt -> cont 19;
	TokenIf -> cont 20;
	TokenThen -> cont 21;
	TokenElse -> cont 22;
	TokenLBracket -> cont 23;
	TokenRBracket -> cont 24;
	TokenComma -> cont 25;
	TokenVar happy_dollar_dollar -> cont 26;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 27 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError ts = error "Syntax error: sequência de instruções inválidas."
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
