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
happyExpList = Happy_Data_Array.listArray (0,299) ([8416,7752,0,32,0,32,65532,969,0,0,0,0,0,49152,36929,57404,18464,28702,25616,15,0,7168,51460,3587,58498,1,4096,0,32768,0,0,0,0,0,0,65528,2003,0,16,0,0,65535,242,128,0,0,57344,18464,28702,9232,14351,37384,7175,51460,3587,58498,1793,62017,33664,31008,16832,15504,8416,7752,4208,3876,2496,0,1248,0,624,0,312,0,156,0,4062,0,2023,0,16,0,9,32768,4,3584,58498,1,0,33664,31008,16832,15504,0,0,0,0,65528,1947,1052,969,32752,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","true","false","num","'+'","'-'","'*'","and","or","not","\"==\"","\">=\"","\"<=\"","'>'","'<'","if","then","else","'['","']'","','","var","head","tail","'\\\\'","\"->\"","%eof"]
        bit_start = st * 31
        bit_end = (st + 1) * 31
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..30]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (8) = happyShift action_6
action_0 (14) = happyShift action_7
action_0 (20) = happyShift action_8
action_0 (23) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (27) = happyShift action_11
action_0 (28) = happyShift action_12
action_0 (29) = happyShift action_13
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (23) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (24) = happyShift action_20
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (6) = happyShift action_4
action_3 (7) = happyShift action_5
action_3 (8) = happyShift action_6
action_3 (9) = happyShift action_24
action_3 (10) = happyShift action_25
action_3 (11) = happyShift action_26
action_3 (12) = happyShift action_27
action_3 (13) = happyShift action_28
action_3 (14) = happyShift action_7
action_3 (15) = happyShift action_29
action_3 (16) = happyShift action_30
action_3 (17) = happyShift action_31
action_3 (18) = happyShift action_32
action_3 (19) = happyShift action_33
action_3 (20) = happyShift action_8
action_3 (23) = happyShift action_9
action_3 (26) = happyShift action_10
action_3 (27) = happyShift action_11
action_3 (28) = happyShift action_12
action_3 (29) = happyShift action_13
action_3 (31) = happyAccept
action_3 (4) = happyGoto action_23
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_3

action_5 _ = happyReduce_4

action_6 _ = happyReduce_5

action_7 (6) = happyShift action_4
action_7 (7) = happyShift action_5
action_7 (8) = happyShift action_6
action_7 (14) = happyShift action_7
action_7 (20) = happyShift action_8
action_7 (23) = happyShift action_9
action_7 (26) = happyShift action_10
action_7 (27) = happyShift action_11
action_7 (28) = happyShift action_12
action_7 (29) = happyShift action_13
action_7 (4) = happyGoto action_22
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (6) = happyShift action_4
action_8 (7) = happyShift action_5
action_8 (8) = happyShift action_6
action_8 (14) = happyShift action_7
action_8 (20) = happyShift action_8
action_8 (23) = happyShift action_9
action_8 (26) = happyShift action_10
action_8 (27) = happyShift action_11
action_8 (28) = happyShift action_12
action_8 (29) = happyShift action_13
action_8 (4) = happyGoto action_21
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_4
action_9 (7) = happyShift action_5
action_9 (8) = happyShift action_6
action_9 (14) = happyShift action_7
action_9 (20) = happyShift action_8
action_9 (23) = happyShift action_9
action_9 (24) = happyShift action_20
action_9 (26) = happyShift action_10
action_9 (27) = happyShift action_11
action_9 (28) = happyShift action_12
action_9 (29) = happyShift action_13
action_9 (4) = happyGoto action_18
action_9 (5) = happyGoto action_19
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_4
action_10 (7) = happyShift action_5
action_10 (8) = happyShift action_6
action_10 (14) = happyShift action_7
action_10 (20) = happyShift action_8
action_10 (23) = happyShift action_9
action_10 (26) = happyShift action_10
action_10 (27) = happyShift action_11
action_10 (28) = happyShift action_12
action_10 (29) = happyShift action_13
action_10 (4) = happyGoto action_17
action_10 _ = happyReduce_6

action_11 (6) = happyShift action_4
action_11 (7) = happyShift action_5
action_11 (8) = happyShift action_6
action_11 (14) = happyShift action_7
action_11 (20) = happyShift action_8
action_11 (23) = happyShift action_9
action_11 (26) = happyShift action_10
action_11 (27) = happyShift action_11
action_11 (28) = happyShift action_12
action_11 (29) = happyShift action_13
action_11 (4) = happyGoto action_16
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_4
action_12 (7) = happyShift action_5
action_12 (8) = happyShift action_6
action_12 (14) = happyShift action_7
action_12 (20) = happyShift action_8
action_12 (23) = happyShift action_9
action_12 (26) = happyShift action_10
action_12 (27) = happyShift action_11
action_12 (28) = happyShift action_12
action_12 (29) = happyShift action_13
action_12 (4) = happyGoto action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (26) = happyShift action_14
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (30) = happyShift action_47
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_4
action_15 (7) = happyShift action_5
action_15 (8) = happyShift action_6
action_15 (9) = happyShift action_24
action_15 (10) = happyShift action_25
action_15 (11) = happyShift action_26
action_15 (12) = happyShift action_27
action_15 (13) = happyShift action_28
action_15 (14) = happyShift action_7
action_15 (15) = happyShift action_29
action_15 (16) = happyShift action_30
action_15 (17) = happyShift action_31
action_15 (18) = happyShift action_32
action_15 (19) = happyShift action_33
action_15 (20) = happyShift action_8
action_15 (23) = happyShift action_9
action_15 (26) = happyShift action_10
action_15 (27) = happyShift action_11
action_15 (28) = happyShift action_12
action_15 (29) = happyShift action_13
action_15 (4) = happyGoto action_23
action_15 _ = happyReduce_21

action_16 (6) = happyShift action_4
action_16 (7) = happyShift action_5
action_16 (8) = happyShift action_6
action_16 (9) = happyShift action_24
action_16 (10) = happyShift action_25
action_16 (11) = happyShift action_26
action_16 (12) = happyShift action_27
action_16 (13) = happyShift action_28
action_16 (14) = happyShift action_7
action_16 (15) = happyShift action_29
action_16 (16) = happyShift action_30
action_16 (17) = happyShift action_31
action_16 (18) = happyShift action_32
action_16 (19) = happyShift action_33
action_16 (20) = happyShift action_8
action_16 (23) = happyShift action_9
action_16 (26) = happyShift action_10
action_16 (27) = happyShift action_11
action_16 (28) = happyShift action_12
action_16 (29) = happyShift action_13
action_16 (4) = happyGoto action_23
action_16 _ = happyReduce_20

action_17 (6) = happyShift action_4
action_17 (7) = happyShift action_5
action_17 (8) = happyShift action_6
action_17 (9) = happyShift action_24
action_17 (10) = happyShift action_25
action_17 (11) = happyShift action_26
action_17 (12) = happyShift action_27
action_17 (13) = happyShift action_28
action_17 (14) = happyShift action_7
action_17 (15) = happyShift action_29
action_17 (16) = happyShift action_30
action_17 (17) = happyShift action_31
action_17 (18) = happyShift action_32
action_17 (19) = happyShift action_33
action_17 (20) = happyShift action_8
action_17 (23) = happyShift action_9
action_17 (26) = happyShift action_10
action_17 (27) = happyShift action_11
action_17 (28) = happyShift action_12
action_17 (29) = happyShift action_13
action_17 (4) = happyGoto action_23
action_17 _ = happyReduce_7

action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (8) = happyShift action_6
action_18 (9) = happyShift action_24
action_18 (10) = happyShift action_25
action_18 (11) = happyShift action_26
action_18 (12) = happyShift action_27
action_18 (13) = happyShift action_28
action_18 (14) = happyShift action_7
action_18 (15) = happyShift action_29
action_18 (16) = happyShift action_30
action_18 (17) = happyShift action_31
action_18 (18) = happyShift action_32
action_18 (19) = happyShift action_33
action_18 (20) = happyShift action_8
action_18 (23) = happyShift action_9
action_18 (25) = happyShift action_46
action_18 (26) = happyShift action_10
action_18 (27) = happyShift action_11
action_18 (28) = happyShift action_12
action_18 (29) = happyShift action_13
action_18 (4) = happyGoto action_23
action_18 _ = happyReduce_24

action_19 (24) = happyShift action_45
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_1

action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (8) = happyShift action_6
action_21 (9) = happyShift action_24
action_21 (10) = happyShift action_25
action_21 (11) = happyShift action_26
action_21 (12) = happyShift action_27
action_21 (13) = happyShift action_28
action_21 (14) = happyShift action_7
action_21 (15) = happyShift action_29
action_21 (16) = happyShift action_30
action_21 (17) = happyShift action_31
action_21 (18) = happyShift action_32
action_21 (19) = happyShift action_33
action_21 (20) = happyShift action_8
action_21 (21) = happyShift action_44
action_21 (23) = happyShift action_9
action_21 (26) = happyShift action_10
action_21 (27) = happyShift action_11
action_21 (28) = happyShift action_12
action_21 (29) = happyShift action_13
action_21 (4) = happyGoto action_23
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_4
action_22 (7) = happyShift action_5
action_22 (8) = happyShift action_6
action_22 (14) = happyShift action_7
action_22 (23) = happyShift action_9
action_22 (26) = happyShift action_10
action_22 (27) = happyShift action_11
action_22 (28) = happyShift action_12
action_22 (29) = happyShift action_13
action_22 (4) = happyGoto action_23
action_22 _ = happyReduce_13

action_23 (6) = happyShift action_4
action_23 (7) = happyShift action_5
action_23 (8) = happyShift action_6
action_23 (9) = happyShift action_24
action_23 (10) = happyShift action_25
action_23 (11) = happyShift action_26
action_23 (12) = happyShift action_27
action_23 (13) = happyShift action_28
action_23 (14) = happyShift action_7
action_23 (15) = happyShift action_29
action_23 (16) = happyShift action_30
action_23 (17) = happyShift action_31
action_23 (18) = happyShift action_32
action_23 (19) = happyShift action_33
action_23 (20) = happyShift action_8
action_23 (23) = happyShift action_9
action_23 (26) = happyShift action_10
action_23 (27) = happyShift action_11
action_23 (28) = happyShift action_12
action_23 (29) = happyShift action_13
action_23 (4) = happyGoto action_23
action_23 _ = happyReduce_23

action_24 (6) = happyShift action_4
action_24 (7) = happyShift action_5
action_24 (8) = happyShift action_6
action_24 (14) = happyShift action_7
action_24 (20) = happyShift action_8
action_24 (23) = happyShift action_9
action_24 (26) = happyShift action_10
action_24 (27) = happyShift action_11
action_24 (28) = happyShift action_12
action_24 (29) = happyShift action_13
action_24 (4) = happyGoto action_43
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_4
action_25 (7) = happyShift action_5
action_25 (8) = happyShift action_6
action_25 (14) = happyShift action_7
action_25 (20) = happyShift action_8
action_25 (23) = happyShift action_9
action_25 (26) = happyShift action_10
action_25 (27) = happyShift action_11
action_25 (28) = happyShift action_12
action_25 (29) = happyShift action_13
action_25 (4) = happyGoto action_42
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_4
action_26 (7) = happyShift action_5
action_26 (8) = happyShift action_6
action_26 (14) = happyShift action_7
action_26 (20) = happyShift action_8
action_26 (23) = happyShift action_9
action_26 (26) = happyShift action_10
action_26 (27) = happyShift action_11
action_26 (28) = happyShift action_12
action_26 (29) = happyShift action_13
action_26 (4) = happyGoto action_41
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_4
action_27 (7) = happyShift action_5
action_27 (8) = happyShift action_6
action_27 (14) = happyShift action_7
action_27 (20) = happyShift action_8
action_27 (23) = happyShift action_9
action_27 (26) = happyShift action_10
action_27 (27) = happyShift action_11
action_27 (28) = happyShift action_12
action_27 (29) = happyShift action_13
action_27 (4) = happyGoto action_40
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_4
action_28 (7) = happyShift action_5
action_28 (8) = happyShift action_6
action_28 (14) = happyShift action_7
action_28 (20) = happyShift action_8
action_28 (23) = happyShift action_9
action_28 (26) = happyShift action_10
action_28 (27) = happyShift action_11
action_28 (28) = happyShift action_12
action_28 (29) = happyShift action_13
action_28 (4) = happyGoto action_39
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_4
action_29 (7) = happyShift action_5
action_29 (8) = happyShift action_6
action_29 (14) = happyShift action_7
action_29 (20) = happyShift action_8
action_29 (23) = happyShift action_9
action_29 (26) = happyShift action_10
action_29 (27) = happyShift action_11
action_29 (28) = happyShift action_12
action_29 (29) = happyShift action_13
action_29 (4) = happyGoto action_38
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_4
action_30 (7) = happyShift action_5
action_30 (8) = happyShift action_6
action_30 (14) = happyShift action_7
action_30 (20) = happyShift action_8
action_30 (23) = happyShift action_9
action_30 (26) = happyShift action_10
action_30 (27) = happyShift action_11
action_30 (28) = happyShift action_12
action_30 (29) = happyShift action_13
action_30 (4) = happyGoto action_37
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_4
action_31 (7) = happyShift action_5
action_31 (8) = happyShift action_6
action_31 (14) = happyShift action_7
action_31 (20) = happyShift action_8
action_31 (23) = happyShift action_9
action_31 (26) = happyShift action_10
action_31 (27) = happyShift action_11
action_31 (28) = happyShift action_12
action_31 (29) = happyShift action_13
action_31 (4) = happyGoto action_36
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_4
action_32 (7) = happyShift action_5
action_32 (8) = happyShift action_6
action_32 (14) = happyShift action_7
action_32 (20) = happyShift action_8
action_32 (23) = happyShift action_9
action_32 (26) = happyShift action_10
action_32 (27) = happyShift action_11
action_32 (28) = happyShift action_12
action_32 (29) = happyShift action_13
action_32 (4) = happyGoto action_35
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_4
action_33 (7) = happyShift action_5
action_33 (8) = happyShift action_6
action_33 (14) = happyShift action_7
action_33 (20) = happyShift action_8
action_33 (23) = happyShift action_9
action_33 (26) = happyShift action_10
action_33 (27) = happyShift action_11
action_33 (28) = happyShift action_12
action_33 (29) = happyShift action_13
action_33 (4) = happyGoto action_34
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_4
action_34 (7) = happyShift action_5
action_34 (8) = happyShift action_6
action_34 (9) = happyShift action_24
action_34 (10) = happyShift action_25
action_34 (11) = happyShift action_26
action_34 (14) = happyShift action_7
action_34 (23) = happyShift action_9
action_34 (26) = happyShift action_10
action_34 (27) = happyShift action_11
action_34 (28) = happyShift action_12
action_34 (29) = happyShift action_13
action_34 (4) = happyGoto action_23
action_34 _ = happyReduce_18

action_35 (6) = happyShift action_4
action_35 (7) = happyShift action_5
action_35 (8) = happyShift action_6
action_35 (9) = happyShift action_24
action_35 (10) = happyShift action_25
action_35 (11) = happyShift action_26
action_35 (14) = happyShift action_7
action_35 (23) = happyShift action_9
action_35 (26) = happyShift action_10
action_35 (27) = happyShift action_11
action_35 (28) = happyShift action_12
action_35 (29) = happyShift action_13
action_35 (4) = happyGoto action_23
action_35 _ = happyReduce_17

action_36 (6) = happyShift action_4
action_36 (7) = happyShift action_5
action_36 (8) = happyShift action_6
action_36 (9) = happyShift action_24
action_36 (10) = happyShift action_25
action_36 (11) = happyShift action_26
action_36 (14) = happyShift action_7
action_36 (23) = happyShift action_9
action_36 (26) = happyShift action_10
action_36 (27) = happyShift action_11
action_36 (28) = happyShift action_12
action_36 (29) = happyShift action_13
action_36 (4) = happyGoto action_23
action_36 _ = happyReduce_16

action_37 (6) = happyShift action_4
action_37 (7) = happyShift action_5
action_37 (8) = happyShift action_6
action_37 (9) = happyShift action_24
action_37 (10) = happyShift action_25
action_37 (11) = happyShift action_26
action_37 (14) = happyShift action_7
action_37 (23) = happyShift action_9
action_37 (26) = happyShift action_10
action_37 (27) = happyShift action_11
action_37 (28) = happyShift action_12
action_37 (29) = happyShift action_13
action_37 (4) = happyGoto action_23
action_37 _ = happyReduce_15

action_38 (6) = happyShift action_4
action_38 (7) = happyShift action_5
action_38 (8) = happyShift action_6
action_38 (9) = happyShift action_24
action_38 (10) = happyShift action_25
action_38 (11) = happyShift action_26
action_38 (14) = happyShift action_7
action_38 (23) = happyShift action_9
action_38 (26) = happyShift action_10
action_38 (27) = happyShift action_11
action_38 (28) = happyShift action_12
action_38 (29) = happyShift action_13
action_38 (4) = happyGoto action_23
action_38 _ = happyReduce_14

action_39 (6) = happyShift action_4
action_39 (7) = happyShift action_5
action_39 (8) = happyShift action_6
action_39 (9) = happyShift action_24
action_39 (10) = happyShift action_25
action_39 (11) = happyShift action_26
action_39 (12) = happyShift action_27
action_39 (14) = happyShift action_7
action_39 (15) = happyShift action_29
action_39 (16) = happyShift action_30
action_39 (17) = happyShift action_31
action_39 (18) = happyShift action_32
action_39 (19) = happyShift action_33
action_39 (23) = happyShift action_9
action_39 (26) = happyShift action_10
action_39 (27) = happyShift action_11
action_39 (28) = happyShift action_12
action_39 (29) = happyShift action_13
action_39 (4) = happyGoto action_23
action_39 _ = happyReduce_12

action_40 (6) = happyShift action_4
action_40 (7) = happyShift action_5
action_40 (8) = happyShift action_6
action_40 (9) = happyShift action_24
action_40 (10) = happyShift action_25
action_40 (11) = happyShift action_26
action_40 (14) = happyShift action_7
action_40 (15) = happyShift action_29
action_40 (16) = happyShift action_30
action_40 (17) = happyShift action_31
action_40 (18) = happyShift action_32
action_40 (19) = happyShift action_33
action_40 (23) = happyShift action_9
action_40 (26) = happyShift action_10
action_40 (27) = happyShift action_11
action_40 (28) = happyShift action_12
action_40 (29) = happyShift action_13
action_40 (4) = happyGoto action_23
action_40 _ = happyReduce_11

action_41 (6) = happyShift action_4
action_41 (7) = happyShift action_5
action_41 (8) = happyShift action_6
action_41 (14) = happyShift action_7
action_41 (23) = happyShift action_9
action_41 (26) = happyShift action_10
action_41 (27) = happyShift action_11
action_41 (28) = happyShift action_12
action_41 (29) = happyShift action_13
action_41 (4) = happyGoto action_23
action_41 _ = happyReduce_10

action_42 (6) = happyShift action_4
action_42 (7) = happyShift action_5
action_42 (8) = happyShift action_6
action_42 (11) = happyShift action_26
action_42 (14) = happyShift action_7
action_42 (23) = happyShift action_9
action_42 (26) = happyShift action_10
action_42 (27) = happyShift action_11
action_42 (28) = happyShift action_12
action_42 (29) = happyShift action_13
action_42 (4) = happyGoto action_23
action_42 _ = happyReduce_9

action_43 (6) = happyShift action_4
action_43 (7) = happyShift action_5
action_43 (8) = happyShift action_6
action_43 (11) = happyShift action_26
action_43 (14) = happyShift action_7
action_43 (23) = happyShift action_9
action_43 (26) = happyShift action_10
action_43 (27) = happyShift action_11
action_43 (28) = happyShift action_12
action_43 (29) = happyShift action_13
action_43 (4) = happyGoto action_23
action_43 _ = happyReduce_8

action_44 (6) = happyShift action_4
action_44 (7) = happyShift action_5
action_44 (8) = happyShift action_6
action_44 (14) = happyShift action_7
action_44 (20) = happyShift action_8
action_44 (23) = happyShift action_9
action_44 (26) = happyShift action_10
action_44 (27) = happyShift action_11
action_44 (28) = happyShift action_12
action_44 (29) = happyShift action_13
action_44 (4) = happyGoto action_50
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_2

action_46 (6) = happyShift action_4
action_46 (7) = happyShift action_5
action_46 (8) = happyShift action_6
action_46 (14) = happyShift action_7
action_46 (20) = happyShift action_8
action_46 (23) = happyShift action_9
action_46 (26) = happyShift action_10
action_46 (27) = happyShift action_11
action_46 (28) = happyShift action_12
action_46 (29) = happyShift action_13
action_46 (4) = happyGoto action_18
action_46 (5) = happyGoto action_49
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (6) = happyShift action_4
action_47 (7) = happyShift action_5
action_47 (8) = happyShift action_6
action_47 (14) = happyShift action_7
action_47 (20) = happyShift action_8
action_47 (23) = happyShift action_9
action_47 (26) = happyShift action_10
action_47 (27) = happyShift action_11
action_47 (28) = happyShift action_12
action_47 (29) = happyShift action_13
action_47 (4) = happyGoto action_48
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (6) = happyShift action_4
action_48 (7) = happyShift action_5
action_48 (8) = happyShift action_6
action_48 (9) = happyShift action_24
action_48 (10) = happyShift action_25
action_48 (11) = happyShift action_26
action_48 (12) = happyShift action_27
action_48 (13) = happyShift action_28
action_48 (14) = happyShift action_7
action_48 (15) = happyShift action_29
action_48 (16) = happyShift action_30
action_48 (17) = happyShift action_31
action_48 (18) = happyShift action_32
action_48 (19) = happyShift action_33
action_48 (20) = happyShift action_8
action_48 (23) = happyShift action_9
action_48 (26) = happyShift action_10
action_48 (27) = happyShift action_11
action_48 (28) = happyShift action_12
action_48 (29) = happyShift action_13
action_48 (4) = happyGoto action_23
action_48 _ = happyReduce_22

action_49 _ = happyReduce_25

action_50 (6) = happyShift action_4
action_50 (7) = happyShift action_5
action_50 (8) = happyShift action_6
action_50 (9) = happyShift action_24
action_50 (10) = happyShift action_25
action_50 (11) = happyShift action_26
action_50 (12) = happyShift action_27
action_50 (13) = happyShift action_28
action_50 (14) = happyShift action_7
action_50 (15) = happyShift action_29
action_50 (16) = happyShift action_30
action_50 (17) = happyShift action_31
action_50 (18) = happyShift action_32
action_50 (19) = happyShift action_33
action_50 (20) = happyShift action_8
action_50 (22) = happyShift action_51
action_50 (23) = happyShift action_9
action_50 (26) = happyShift action_10
action_50 (27) = happyShift action_11
action_50 (28) = happyShift action_12
action_50 (29) = happyShift action_13
action_50 (4) = happyGoto action_23
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_4
action_51 (7) = happyShift action_5
action_51 (8) = happyShift action_6
action_51 (14) = happyShift action_7
action_51 (20) = happyShift action_8
action_51 (23) = happyShift action_9
action_51 (26) = happyShift action_10
action_51 (27) = happyShift action_11
action_51 (28) = happyShift action_12
action_51 (29) = happyShift action_13
action_51 (4) = happyGoto action_52
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_4
action_52 (7) = happyShift action_5
action_52 (8) = happyShift action_6
action_52 (9) = happyShift action_24
action_52 (10) = happyShift action_25
action_52 (11) = happyShift action_26
action_52 (12) = happyShift action_27
action_52 (13) = happyShift action_28
action_52 (14) = happyShift action_7
action_52 (15) = happyShift action_29
action_52 (16) = happyShift action_30
action_52 (17) = happyShift action_31
action_52 (18) = happyShift action_32
action_52 (19) = happyShift action_33
action_52 (20) = happyFail []
action_52 (23) = happyShift action_9
action_52 (26) = happyShift action_10
action_52 (27) = happyShift action_11
action_52 (28) = happyShift action_12
action_52 (29) = happyShift action_13
action_52 (4) = happyGoto action_23
action_52 _ = happyReduce_19

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 _
	_
	 =  HappyAbsSyn4
		 (List []
	)

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (List happy_var_2
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_2)
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (App (Var happy_var_1) happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Geq happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Leq happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Gt happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Lt happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 6 4 happyReduction_19
happyReduction_19 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Head happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tail happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 4 4 happyReduction_22
happyReduction_22 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 Nothing happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_2  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  5 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 31 31 notHappyAtAll (HappyState action) sts stk []

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
	TokenHead -> cont 27;
	TokenTail -> cont 28;
	TokenLam -> cont 29;
	TokenArrow -> cont 30;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 31 tk tks = happyError' (tks, explist)
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
