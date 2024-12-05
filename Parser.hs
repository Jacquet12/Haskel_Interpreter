{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,383) ([16832,35472,3587,21634,61468,43007,226,0,0,0,0,0,0,1792,10817,14350,21000,49265,36929,907,0,1024,4208,58020,0,0,7168,43268,57400,18464,453,32767,3626,0,0,16832,35472,3587,21634,28700,42000,32994,8323,1813,1052,14505,8416,50504,1793,10817,14350,21000,49265,36929,906,33294,7252,0,0,0,0,0,0,57344,20479,461,0,256,65528,30035,0,256,0,0,61440,45055,226,128,0,1052,14505,0,0,1792,10817,14,4096,1,0,0,624,0,4992,0,39936,0,57344,4,0,39,0,16248,0,63936,1,16384,0,16384,2,0,18,0,0,8,0,136,0,1088,0,0,63488,23551,49265,36929,906,0,32,0,64,33664,5408,7,0,0,0,0,0,34,65472,1,0,4096,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","Type","true","false","num","'+'","'-'","'*'","and","or","not","\"==\"","\">=\"","\"<=\"","'>'","'<'","if","then","else","'['","']'","'\\\\'","\"->\"","'('","')'","','","':'","var","head","tail","%eof"]
        bit_start = st * 35
        bit_end = (st + 1) * 35
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..34]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_3
action_0 (8) = happyShift action_4
action_0 (9) = happyShift action_5
action_0 (15) = happyShift action_6
action_0 (21) = happyShift action_7
action_0 (24) = happyShift action_8
action_0 (26) = happyShift action_9
action_0 (28) = happyShift action_10
action_0 (32) = happyShift action_11
action_0 (33) = happyShift action_12
action_0 (34) = happyShift action_13
action_0 (4) = happyGoto action_14
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_3
action_1 (8) = happyShift action_4
action_1 (9) = happyShift action_5
action_1 (15) = happyShift action_6
action_1 (21) = happyShift action_7
action_1 (24) = happyShift action_8
action_1 (26) = happyShift action_9
action_1 (28) = happyShift action_10
action_1 (32) = happyShift action_11
action_1 (33) = happyShift action_12
action_1 (34) = happyShift action_13
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (7) = happyShift action_3
action_2 (8) = happyShift action_4
action_2 (9) = happyShift action_5
action_2 (10) = happyShift action_16
action_2 (11) = happyShift action_17
action_2 (12) = happyShift action_18
action_2 (13) = happyShift action_19
action_2 (14) = happyShift action_20
action_2 (15) = happyShift action_6
action_2 (16) = happyShift action_21
action_2 (17) = happyShift action_22
action_2 (18) = happyShift action_23
action_2 (19) = happyShift action_24
action_2 (20) = happyShift action_25
action_2 (21) = happyShift action_7
action_2 (24) = happyShift action_8
action_2 (26) = happyShift action_9
action_2 (28) = happyShift action_10
action_2 (32) = happyShift action_11
action_2 (33) = happyShift action_12
action_2 (34) = happyShift action_13
action_2 (4) = happyGoto action_15
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_4

action_4 _ = happyReduce_5

action_5 _ = happyReduce_6

action_6 (7) = happyShift action_3
action_6 (8) = happyShift action_4
action_6 (9) = happyShift action_5
action_6 (15) = happyShift action_6
action_6 (21) = happyShift action_7
action_6 (24) = happyShift action_8
action_6 (26) = happyShift action_9
action_6 (28) = happyShift action_10
action_6 (32) = happyShift action_11
action_6 (33) = happyShift action_12
action_6 (34) = happyShift action_13
action_6 (4) = happyGoto action_35
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (7) = happyShift action_3
action_7 (8) = happyShift action_4
action_7 (9) = happyShift action_5
action_7 (15) = happyShift action_6
action_7 (21) = happyShift action_7
action_7 (24) = happyShift action_8
action_7 (26) = happyShift action_9
action_7 (28) = happyShift action_10
action_7 (32) = happyShift action_11
action_7 (33) = happyShift action_12
action_7 (34) = happyShift action_13
action_7 (4) = happyGoto action_34
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (7) = happyShift action_3
action_8 (8) = happyShift action_4
action_8 (9) = happyShift action_5
action_8 (15) = happyShift action_6
action_8 (21) = happyShift action_7
action_8 (24) = happyShift action_8
action_8 (25) = happyShift action_33
action_8 (26) = happyShift action_9
action_8 (28) = happyShift action_10
action_8 (32) = happyShift action_11
action_8 (33) = happyShift action_12
action_8 (34) = happyShift action_13
action_8 (4) = happyGoto action_31
action_8 (5) = happyGoto action_32
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (32) = happyShift action_30
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_3
action_10 (8) = happyShift action_4
action_10 (9) = happyShift action_5
action_10 (15) = happyShift action_6
action_10 (21) = happyShift action_7
action_10 (24) = happyShift action_8
action_10 (26) = happyShift action_9
action_10 (28) = happyShift action_10
action_10 (32) = happyShift action_11
action_10 (33) = happyShift action_12
action_10 (34) = happyShift action_13
action_10 (4) = happyGoto action_29
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_3
action_11 (8) = happyShift action_4
action_11 (9) = happyShift action_5
action_11 (15) = happyShift action_6
action_11 (21) = happyShift action_7
action_11 (24) = happyShift action_8
action_11 (26) = happyShift action_9
action_11 (28) = happyShift action_10
action_11 (32) = happyShift action_11
action_11 (33) = happyShift action_12
action_11 (34) = happyShift action_13
action_11 (4) = happyGoto action_28
action_11 _ = happyReduce_7

action_12 (7) = happyShift action_3
action_12 (8) = happyShift action_4
action_12 (9) = happyShift action_5
action_12 (15) = happyShift action_6
action_12 (21) = happyShift action_7
action_12 (24) = happyShift action_8
action_12 (26) = happyShift action_9
action_12 (28) = happyShift action_10
action_12 (32) = happyShift action_11
action_12 (33) = happyShift action_12
action_12 (34) = happyShift action_13
action_12 (4) = happyGoto action_27
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (7) = happyShift action_3
action_13 (8) = happyShift action_4
action_13 (9) = happyShift action_5
action_13 (15) = happyShift action_6
action_13 (21) = happyShift action_7
action_13 (24) = happyShift action_8
action_13 (26) = happyShift action_9
action_13 (28) = happyShift action_10
action_13 (32) = happyShift action_11
action_13 (33) = happyShift action_12
action_13 (34) = happyShift action_13
action_13 (4) = happyGoto action_26
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (7) = happyShift action_3
action_14 (8) = happyShift action_4
action_14 (9) = happyShift action_5
action_14 (10) = happyShift action_16
action_14 (11) = happyShift action_17
action_14 (12) = happyShift action_18
action_14 (13) = happyShift action_19
action_14 (14) = happyShift action_20
action_14 (15) = happyShift action_6
action_14 (16) = happyShift action_21
action_14 (17) = happyShift action_22
action_14 (18) = happyShift action_23
action_14 (19) = happyShift action_24
action_14 (20) = happyShift action_25
action_14 (21) = happyShift action_7
action_14 (24) = happyShift action_8
action_14 (26) = happyShift action_9
action_14 (28) = happyShift action_10
action_14 (32) = happyShift action_11
action_14 (33) = happyShift action_12
action_14 (34) = happyShift action_13
action_14 (35) = happyAccept
action_14 (4) = happyGoto action_15
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_3
action_15 (8) = happyShift action_4
action_15 (9) = happyShift action_5
action_15 (10) = happyShift action_16
action_15 (11) = happyShift action_17
action_15 (12) = happyShift action_18
action_15 (13) = happyShift action_19
action_15 (14) = happyShift action_20
action_15 (15) = happyShift action_6
action_15 (16) = happyShift action_21
action_15 (17) = happyShift action_22
action_15 (18) = happyShift action_23
action_15 (19) = happyShift action_24
action_15 (20) = happyShift action_25
action_15 (21) = happyShift action_7
action_15 (24) = happyShift action_8
action_15 (26) = happyShift action_9
action_15 (28) = happyShift action_10
action_15 (32) = happyShift action_11
action_15 (33) = happyShift action_12
action_15 (34) = happyShift action_13
action_15 (4) = happyGoto action_15
action_15 _ = happyReduce_1

action_16 (7) = happyShift action_3
action_16 (8) = happyShift action_4
action_16 (9) = happyShift action_5
action_16 (15) = happyShift action_6
action_16 (21) = happyShift action_7
action_16 (24) = happyShift action_8
action_16 (26) = happyShift action_9
action_16 (28) = happyShift action_10
action_16 (32) = happyShift action_11
action_16 (33) = happyShift action_12
action_16 (34) = happyShift action_13
action_16 (4) = happyGoto action_50
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (7) = happyShift action_3
action_17 (8) = happyShift action_4
action_17 (9) = happyShift action_5
action_17 (15) = happyShift action_6
action_17 (21) = happyShift action_7
action_17 (24) = happyShift action_8
action_17 (26) = happyShift action_9
action_17 (28) = happyShift action_10
action_17 (32) = happyShift action_11
action_17 (33) = happyShift action_12
action_17 (34) = happyShift action_13
action_17 (4) = happyGoto action_49
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_3
action_18 (8) = happyShift action_4
action_18 (9) = happyShift action_5
action_18 (15) = happyShift action_6
action_18 (21) = happyShift action_7
action_18 (24) = happyShift action_8
action_18 (26) = happyShift action_9
action_18 (28) = happyShift action_10
action_18 (32) = happyShift action_11
action_18 (33) = happyShift action_12
action_18 (34) = happyShift action_13
action_18 (4) = happyGoto action_48
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_3
action_19 (8) = happyShift action_4
action_19 (9) = happyShift action_5
action_19 (15) = happyShift action_6
action_19 (21) = happyShift action_7
action_19 (24) = happyShift action_8
action_19 (26) = happyShift action_9
action_19 (28) = happyShift action_10
action_19 (32) = happyShift action_11
action_19 (33) = happyShift action_12
action_19 (34) = happyShift action_13
action_19 (4) = happyGoto action_47
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (7) = happyShift action_3
action_20 (8) = happyShift action_4
action_20 (9) = happyShift action_5
action_20 (15) = happyShift action_6
action_20 (21) = happyShift action_7
action_20 (24) = happyShift action_8
action_20 (26) = happyShift action_9
action_20 (28) = happyShift action_10
action_20 (32) = happyShift action_11
action_20 (33) = happyShift action_12
action_20 (34) = happyShift action_13
action_20 (4) = happyGoto action_46
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (7) = happyShift action_3
action_21 (8) = happyShift action_4
action_21 (9) = happyShift action_5
action_21 (15) = happyShift action_6
action_21 (21) = happyShift action_7
action_21 (24) = happyShift action_8
action_21 (26) = happyShift action_9
action_21 (28) = happyShift action_10
action_21 (32) = happyShift action_11
action_21 (33) = happyShift action_12
action_21 (34) = happyShift action_13
action_21 (4) = happyGoto action_45
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_3
action_22 (8) = happyShift action_4
action_22 (9) = happyShift action_5
action_22 (15) = happyShift action_6
action_22 (21) = happyShift action_7
action_22 (24) = happyShift action_8
action_22 (26) = happyShift action_9
action_22 (28) = happyShift action_10
action_22 (32) = happyShift action_11
action_22 (33) = happyShift action_12
action_22 (34) = happyShift action_13
action_22 (4) = happyGoto action_44
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_3
action_23 (8) = happyShift action_4
action_23 (9) = happyShift action_5
action_23 (15) = happyShift action_6
action_23 (21) = happyShift action_7
action_23 (24) = happyShift action_8
action_23 (26) = happyShift action_9
action_23 (28) = happyShift action_10
action_23 (32) = happyShift action_11
action_23 (33) = happyShift action_12
action_23 (34) = happyShift action_13
action_23 (4) = happyGoto action_43
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_3
action_24 (8) = happyShift action_4
action_24 (9) = happyShift action_5
action_24 (15) = happyShift action_6
action_24 (21) = happyShift action_7
action_24 (24) = happyShift action_8
action_24 (26) = happyShift action_9
action_24 (28) = happyShift action_10
action_24 (32) = happyShift action_11
action_24 (33) = happyShift action_12
action_24 (34) = happyShift action_13
action_24 (4) = happyGoto action_42
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_3
action_25 (8) = happyShift action_4
action_25 (9) = happyShift action_5
action_25 (15) = happyShift action_6
action_25 (21) = happyShift action_7
action_25 (24) = happyShift action_8
action_25 (26) = happyShift action_9
action_25 (28) = happyShift action_10
action_25 (32) = happyShift action_11
action_25 (33) = happyShift action_12
action_25 (34) = happyShift action_13
action_25 (4) = happyGoto action_41
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_3
action_26 (8) = happyShift action_4
action_26 (9) = happyShift action_5
action_26 (10) = happyShift action_16
action_26 (11) = happyShift action_17
action_26 (12) = happyShift action_18
action_26 (13) = happyShift action_19
action_26 (14) = happyShift action_20
action_26 (15) = happyShift action_6
action_26 (16) = happyShift action_21
action_26 (17) = happyShift action_22
action_26 (18) = happyShift action_23
action_26 (19) = happyShift action_24
action_26 (20) = happyShift action_25
action_26 (21) = happyShift action_7
action_26 (24) = happyShift action_8
action_26 (26) = happyShift action_9
action_26 (28) = happyShift action_10
action_26 (32) = happyShift action_11
action_26 (33) = happyShift action_12
action_26 (34) = happyShift action_13
action_26 (4) = happyGoto action_15
action_26 _ = happyReduce_24

action_27 (7) = happyShift action_3
action_27 (8) = happyShift action_4
action_27 (9) = happyShift action_5
action_27 (10) = happyShift action_16
action_27 (11) = happyShift action_17
action_27 (12) = happyShift action_18
action_27 (13) = happyShift action_19
action_27 (14) = happyShift action_20
action_27 (15) = happyShift action_6
action_27 (16) = happyShift action_21
action_27 (17) = happyShift action_22
action_27 (18) = happyShift action_23
action_27 (19) = happyShift action_24
action_27 (20) = happyShift action_25
action_27 (21) = happyShift action_7
action_27 (24) = happyShift action_8
action_27 (26) = happyShift action_9
action_27 (28) = happyShift action_10
action_27 (32) = happyShift action_11
action_27 (33) = happyShift action_12
action_27 (34) = happyShift action_13
action_27 (4) = happyGoto action_15
action_27 _ = happyReduce_23

action_28 (7) = happyShift action_3
action_28 (8) = happyShift action_4
action_28 (9) = happyShift action_5
action_28 (10) = happyShift action_16
action_28 (11) = happyShift action_17
action_28 (12) = happyShift action_18
action_28 (13) = happyShift action_19
action_28 (14) = happyShift action_20
action_28 (15) = happyShift action_6
action_28 (16) = happyShift action_21
action_28 (17) = happyShift action_22
action_28 (18) = happyShift action_23
action_28 (19) = happyShift action_24
action_28 (20) = happyShift action_25
action_28 (21) = happyShift action_7
action_28 (24) = happyShift action_8
action_28 (26) = happyShift action_9
action_28 (28) = happyShift action_10
action_28 (32) = happyShift action_11
action_28 (33) = happyShift action_12
action_28 (34) = happyShift action_13
action_28 (4) = happyGoto action_15
action_28 _ = happyReduce_8

action_29 (7) = happyShift action_3
action_29 (8) = happyShift action_4
action_29 (9) = happyShift action_5
action_29 (10) = happyShift action_16
action_29 (11) = happyShift action_17
action_29 (12) = happyShift action_18
action_29 (13) = happyShift action_19
action_29 (14) = happyShift action_20
action_29 (15) = happyShift action_6
action_29 (16) = happyShift action_21
action_29 (17) = happyShift action_22
action_29 (18) = happyShift action_23
action_29 (19) = happyShift action_24
action_29 (20) = happyShift action_25
action_29 (21) = happyShift action_7
action_29 (24) = happyShift action_8
action_29 (26) = happyShift action_9
action_29 (28) = happyShift action_10
action_29 (29) = happyShift action_40
action_29 (32) = happyShift action_11
action_29 (33) = happyShift action_12
action_29 (34) = happyShift action_13
action_29 (4) = happyGoto action_15
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (31) = happyShift action_39
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (7) = happyShift action_3
action_31 (8) = happyShift action_4
action_31 (9) = happyShift action_5
action_31 (10) = happyShift action_16
action_31 (11) = happyShift action_17
action_31 (12) = happyShift action_18
action_31 (13) = happyShift action_19
action_31 (14) = happyShift action_20
action_31 (15) = happyShift action_6
action_31 (16) = happyShift action_21
action_31 (17) = happyShift action_22
action_31 (18) = happyShift action_23
action_31 (19) = happyShift action_24
action_31 (20) = happyShift action_25
action_31 (21) = happyShift action_7
action_31 (24) = happyShift action_8
action_31 (26) = happyShift action_9
action_31 (28) = happyShift action_10
action_31 (30) = happyShift action_38
action_31 (32) = happyShift action_11
action_31 (33) = happyShift action_12
action_31 (34) = happyShift action_13
action_31 (4) = happyGoto action_15
action_31 _ = happyReduce_25

action_32 (25) = happyShift action_37
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_2

action_34 (7) = happyShift action_3
action_34 (8) = happyShift action_4
action_34 (9) = happyShift action_5
action_34 (10) = happyShift action_16
action_34 (11) = happyShift action_17
action_34 (12) = happyShift action_18
action_34 (13) = happyShift action_19
action_34 (14) = happyShift action_20
action_34 (15) = happyShift action_6
action_34 (16) = happyShift action_21
action_34 (17) = happyShift action_22
action_34 (18) = happyShift action_23
action_34 (19) = happyShift action_24
action_34 (20) = happyShift action_25
action_34 (21) = happyShift action_7
action_34 (22) = happyShift action_36
action_34 (24) = happyShift action_8
action_34 (26) = happyShift action_9
action_34 (28) = happyShift action_10
action_34 (32) = happyShift action_11
action_34 (33) = happyShift action_12
action_34 (34) = happyShift action_13
action_34 (4) = happyGoto action_15
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (7) = happyShift action_3
action_35 (8) = happyShift action_4
action_35 (9) = happyShift action_5
action_35 (15) = happyShift action_6
action_35 (24) = happyShift action_8
action_35 (26) = happyShift action_9
action_35 (28) = happyShift action_10
action_35 (32) = happyShift action_11
action_35 (33) = happyShift action_12
action_35 (34) = happyShift action_13
action_35 (4) = happyGoto action_15
action_35 _ = happyReduce_14

action_36 (7) = happyShift action_3
action_36 (8) = happyShift action_4
action_36 (9) = happyShift action_5
action_36 (15) = happyShift action_6
action_36 (21) = happyShift action_7
action_36 (24) = happyShift action_8
action_36 (26) = happyShift action_9
action_36 (28) = happyShift action_10
action_36 (32) = happyShift action_11
action_36 (33) = happyShift action_12
action_36 (34) = happyShift action_13
action_36 (4) = happyGoto action_55
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_3

action_38 (7) = happyShift action_3
action_38 (8) = happyShift action_4
action_38 (9) = happyShift action_5
action_38 (15) = happyShift action_6
action_38 (21) = happyShift action_7
action_38 (24) = happyShift action_8
action_38 (26) = happyShift action_9
action_38 (28) = happyShift action_10
action_38 (32) = happyShift action_11
action_38 (33) = happyShift action_12
action_38 (34) = happyShift action_13
action_38 (4) = happyGoto action_31
action_38 (5) = happyGoto action_54
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (24) = happyShift action_52
action_39 (28) = happyShift action_53
action_39 (6) = happyGoto action_51
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_21

action_41 (7) = happyShift action_3
action_41 (8) = happyShift action_4
action_41 (9) = happyShift action_5
action_41 (10) = happyShift action_16
action_41 (11) = happyShift action_17
action_41 (12) = happyShift action_18
action_41 (15) = happyShift action_6
action_41 (24) = happyShift action_8
action_41 (26) = happyShift action_9
action_41 (28) = happyShift action_10
action_41 (32) = happyShift action_11
action_41 (33) = happyShift action_12
action_41 (34) = happyShift action_13
action_41 (4) = happyGoto action_15
action_41 _ = happyReduce_19

action_42 (7) = happyShift action_3
action_42 (8) = happyShift action_4
action_42 (9) = happyShift action_5
action_42 (10) = happyShift action_16
action_42 (11) = happyShift action_17
action_42 (12) = happyShift action_18
action_42 (15) = happyShift action_6
action_42 (24) = happyShift action_8
action_42 (26) = happyShift action_9
action_42 (28) = happyShift action_10
action_42 (32) = happyShift action_11
action_42 (33) = happyShift action_12
action_42 (34) = happyShift action_13
action_42 (4) = happyGoto action_15
action_42 _ = happyReduce_18

action_43 (7) = happyShift action_3
action_43 (8) = happyShift action_4
action_43 (9) = happyShift action_5
action_43 (10) = happyShift action_16
action_43 (11) = happyShift action_17
action_43 (12) = happyShift action_18
action_43 (15) = happyShift action_6
action_43 (24) = happyShift action_8
action_43 (26) = happyShift action_9
action_43 (28) = happyShift action_10
action_43 (32) = happyShift action_11
action_43 (33) = happyShift action_12
action_43 (34) = happyShift action_13
action_43 (4) = happyGoto action_15
action_43 _ = happyReduce_17

action_44 (7) = happyShift action_3
action_44 (8) = happyShift action_4
action_44 (9) = happyShift action_5
action_44 (10) = happyShift action_16
action_44 (11) = happyShift action_17
action_44 (12) = happyShift action_18
action_44 (15) = happyShift action_6
action_44 (24) = happyShift action_8
action_44 (26) = happyShift action_9
action_44 (28) = happyShift action_10
action_44 (32) = happyShift action_11
action_44 (33) = happyShift action_12
action_44 (34) = happyShift action_13
action_44 (4) = happyGoto action_15
action_44 _ = happyReduce_16

action_45 (7) = happyShift action_3
action_45 (8) = happyShift action_4
action_45 (9) = happyShift action_5
action_45 (10) = happyShift action_16
action_45 (11) = happyShift action_17
action_45 (12) = happyShift action_18
action_45 (15) = happyShift action_6
action_45 (24) = happyShift action_8
action_45 (26) = happyShift action_9
action_45 (28) = happyShift action_10
action_45 (32) = happyShift action_11
action_45 (33) = happyShift action_12
action_45 (34) = happyShift action_13
action_45 (4) = happyGoto action_15
action_45 _ = happyReduce_15

action_46 (7) = happyShift action_3
action_46 (8) = happyShift action_4
action_46 (9) = happyShift action_5
action_46 (10) = happyShift action_16
action_46 (11) = happyShift action_17
action_46 (12) = happyShift action_18
action_46 (13) = happyShift action_19
action_46 (15) = happyShift action_6
action_46 (16) = happyShift action_21
action_46 (17) = happyShift action_22
action_46 (18) = happyShift action_23
action_46 (19) = happyShift action_24
action_46 (20) = happyShift action_25
action_46 (24) = happyShift action_8
action_46 (26) = happyShift action_9
action_46 (28) = happyShift action_10
action_46 (32) = happyShift action_11
action_46 (33) = happyShift action_12
action_46 (34) = happyShift action_13
action_46 (4) = happyGoto action_15
action_46 _ = happyReduce_13

action_47 (7) = happyShift action_3
action_47 (8) = happyShift action_4
action_47 (9) = happyShift action_5
action_47 (10) = happyShift action_16
action_47 (11) = happyShift action_17
action_47 (12) = happyShift action_18
action_47 (15) = happyShift action_6
action_47 (16) = happyShift action_21
action_47 (17) = happyShift action_22
action_47 (18) = happyShift action_23
action_47 (19) = happyShift action_24
action_47 (20) = happyShift action_25
action_47 (24) = happyShift action_8
action_47 (26) = happyShift action_9
action_47 (28) = happyShift action_10
action_47 (32) = happyShift action_11
action_47 (33) = happyShift action_12
action_47 (34) = happyShift action_13
action_47 (4) = happyGoto action_15
action_47 _ = happyReduce_12

action_48 (7) = happyShift action_3
action_48 (8) = happyShift action_4
action_48 (9) = happyShift action_5
action_48 (15) = happyShift action_6
action_48 (24) = happyShift action_8
action_48 (26) = happyShift action_9
action_48 (28) = happyShift action_10
action_48 (32) = happyShift action_11
action_48 (33) = happyShift action_12
action_48 (34) = happyShift action_13
action_48 (4) = happyGoto action_15
action_48 _ = happyReduce_11

action_49 (7) = happyShift action_3
action_49 (8) = happyShift action_4
action_49 (9) = happyShift action_5
action_49 (12) = happyShift action_18
action_49 (15) = happyShift action_6
action_49 (24) = happyShift action_8
action_49 (26) = happyShift action_9
action_49 (28) = happyShift action_10
action_49 (32) = happyShift action_11
action_49 (33) = happyShift action_12
action_49 (34) = happyShift action_13
action_49 (4) = happyGoto action_15
action_49 _ = happyReduce_10

action_50 (7) = happyShift action_3
action_50 (8) = happyShift action_4
action_50 (9) = happyShift action_5
action_50 (12) = happyShift action_18
action_50 (15) = happyShift action_6
action_50 (24) = happyShift action_8
action_50 (26) = happyShift action_9
action_50 (28) = happyShift action_10
action_50 (32) = happyShift action_11
action_50 (33) = happyShift action_12
action_50 (34) = happyShift action_13
action_50 (4) = happyGoto action_15
action_50 _ = happyReduce_9

action_51 (27) = happyShift action_59
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (24) = happyShift action_52
action_52 (28) = happyShift action_53
action_52 (6) = happyGoto action_58
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (24) = happyShift action_52
action_53 (28) = happyShift action_53
action_53 (6) = happyGoto action_57
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_26

action_55 (7) = happyShift action_3
action_55 (8) = happyShift action_4
action_55 (9) = happyShift action_5
action_55 (10) = happyShift action_16
action_55 (11) = happyShift action_17
action_55 (12) = happyShift action_18
action_55 (13) = happyShift action_19
action_55 (14) = happyShift action_20
action_55 (15) = happyShift action_6
action_55 (16) = happyShift action_21
action_55 (17) = happyShift action_22
action_55 (18) = happyShift action_23
action_55 (19) = happyShift action_24
action_55 (20) = happyShift action_25
action_55 (21) = happyShift action_7
action_55 (23) = happyShift action_56
action_55 (24) = happyShift action_8
action_55 (26) = happyShift action_9
action_55 (28) = happyShift action_10
action_55 (32) = happyShift action_11
action_55 (33) = happyShift action_12
action_55 (34) = happyShift action_13
action_55 (4) = happyGoto action_15
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (7) = happyShift action_3
action_56 (8) = happyShift action_4
action_56 (9) = happyShift action_5
action_56 (15) = happyShift action_6
action_56 (21) = happyShift action_7
action_56 (24) = happyShift action_8
action_56 (26) = happyShift action_9
action_56 (28) = happyShift action_10
action_56 (32) = happyShift action_11
action_56 (33) = happyShift action_12
action_56 (34) = happyShift action_13
action_56 (4) = happyGoto action_63
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (27) = happyShift action_62
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (25) = happyShift action_61
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (7) = happyShift action_3
action_59 (8) = happyShift action_4
action_59 (9) = happyShift action_5
action_59 (15) = happyShift action_6
action_59 (21) = happyShift action_7
action_59 (24) = happyShift action_8
action_59 (26) = happyShift action_9
action_59 (28) = happyShift action_10
action_59 (32) = happyShift action_11
action_59 (33) = happyShift action_12
action_59 (34) = happyShift action_13
action_59 (4) = happyGoto action_60
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (7) = happyShift action_3
action_60 (8) = happyShift action_4
action_60 (9) = happyShift action_5
action_60 (10) = happyShift action_16
action_60 (11) = happyShift action_17
action_60 (12) = happyShift action_18
action_60 (13) = happyShift action_19
action_60 (14) = happyShift action_20
action_60 (15) = happyShift action_6
action_60 (16) = happyShift action_21
action_60 (17) = happyShift action_22
action_60 (18) = happyShift action_23
action_60 (19) = happyShift action_24
action_60 (20) = happyShift action_25
action_60 (21) = happyShift action_7
action_60 (24) = happyShift action_8
action_60 (26) = happyShift action_9
action_60 (28) = happyShift action_10
action_60 (32) = happyShift action_11
action_60 (33) = happyShift action_12
action_60 (34) = happyShift action_13
action_60 (4) = happyGoto action_15
action_60 _ = happyReduce_20

action_61 _ = happyReduce_28

action_62 (24) = happyShift action_52
action_62 (28) = happyShift action_53
action_62 (6) = happyGoto action_64
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (7) = happyShift action_3
action_63 (8) = happyShift action_4
action_63 (9) = happyShift action_5
action_63 (10) = happyShift action_16
action_63 (11) = happyShift action_17
action_63 (12) = happyShift action_18
action_63 (13) = happyShift action_19
action_63 (14) = happyShift action_20
action_63 (15) = happyShift action_6
action_63 (16) = happyShift action_21
action_63 (17) = happyShift action_22
action_63 (18) = happyShift action_23
action_63 (19) = happyShift action_24
action_63 (20) = happyShift action_25
action_63 (21) = happyFail []
action_63 (24) = happyShift action_8
action_63 (26) = happyShift action_9
action_63 (28) = happyShift action_10
action_63 (32) = happyShift action_11
action_63 (33) = happyShift action_12
action_63 (34) = happyShift action_13
action_63 (4) = happyGoto action_15
action_63 _ = happyReduce_22

action_64 (29) = happyShift action_65
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_27

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 _
	_
	 =  HappyAbsSyn4
		 (List []
	)

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (List happy_var_2
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_2)
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (App (Var happy_var_1) happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Geq happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Leq happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Gt happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Lt happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happyReduce 6 4 happyReduction_20
happyReduction_20 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 6 4 happyReduction_22
happyReduction_22 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_2  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Head happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tail happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happyReduce 5 6 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_3  6 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (TList happy_var_2
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTrue -> cont 7;
	TokenFalse -> cont 8;
	TokenNum happy_dollar_dollar -> cont 9;
	TokenAdd -> cont 10;
	TokenSub -> cont 11;
	TokenMul -> cont 12;
	TokenAnd -> cont 13;
	TokenOr -> cont 14;
	TokenNot -> cont 15;
	TokenEq -> cont 16;
	TokenGeq -> cont 17;
	TokenLeq -> cont 18;
	TokenGt -> cont 19;
	TokenLt -> cont 20;
	TokenIf -> cont 21;
	TokenThen -> cont 22;
	TokenElse -> cont 23;
	TokenLBracket -> cont 24;
	TokenRBracket -> cont 25;
	TokenLam -> cont 26;
	TokenArrow -> cont 27;
	TokenLParen -> cont 28;
	TokenRParen -> cont 29;
	TokenComma -> cont 30;
	TokenColon -> cont 31;
	TokenVar happy_dollar_dollar -> cont 32;
	TokenHead -> cont 33;
	TokenTail -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
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
parseError ts = error ("Syntax error: sequência de instruções inválidas. Tokens: " ++ show ts)
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
