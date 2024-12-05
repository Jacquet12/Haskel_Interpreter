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
happyExpList = Happy_Data_Array.listArray (0,286) ([8416,3656,1052,33225,16383,57,0,0,0,0,0,2104,914,16647,57458,51232,14,0,33664,14624,4208,1828,65534,228,0,14336,37384,1795,29249,8416,3656,1052,33225,8323,28729,9232,3591,58498,16832,7312,2104,914,16647,114,0,0,0,0,0,65520,1959,0,8,0,63488,38911,3,1,8416,3656,0,32768,8323,32825,19,28672,2,19968,0,2496,0,312,0,2031,57344,252,32768,0,4608,0,576,0,0,63488,39935,1795,29249,65280,7,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","true","false","num","'+'","'-'","'*'","and","or","not","\"==\"","\">=\"","\"<=\"","'>'","'<'","if","then","else","'['","']'","','","var","head","tail","%eof"]
        bit_start = st * 29
        bit_end = (st + 1) * 29
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..28]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_3
action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (20) = happyShift action_7
action_0 (23) = happyShift action_8
action_0 (26) = happyShift action_9
action_0 (27) = happyShift action_10
action_0 (28) = happyShift action_11
action_0 (4) = happyGoto action_12
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_3
action_1 (7) = happyShift action_4
action_1 (8) = happyShift action_5
action_1 (14) = happyShift action_6
action_1 (20) = happyShift action_7
action_1 (23) = happyShift action_8
action_1 (26) = happyShift action_9
action_1 (27) = happyShift action_10
action_1 (28) = happyShift action_11
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (6) = happyShift action_3
action_2 (7) = happyShift action_4
action_2 (8) = happyShift action_5
action_2 (9) = happyShift action_14
action_2 (10) = happyShift action_15
action_2 (11) = happyShift action_16
action_2 (12) = happyShift action_17
action_2 (13) = happyShift action_18
action_2 (14) = happyShift action_6
action_2 (15) = happyShift action_19
action_2 (16) = happyShift action_20
action_2 (17) = happyShift action_21
action_2 (18) = happyShift action_22
action_2 (19) = happyShift action_23
action_2 (20) = happyShift action_7
action_2 (23) = happyShift action_8
action_2 (26) = happyShift action_9
action_2 (27) = happyShift action_10
action_2 (28) = happyShift action_11
action_2 (4) = happyGoto action_13
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_4

action_4 _ = happyReduce_5

action_5 _ = happyReduce_6

action_6 (6) = happyShift action_3
action_6 (7) = happyShift action_4
action_6 (8) = happyShift action_5
action_6 (14) = happyShift action_6
action_6 (20) = happyShift action_7
action_6 (23) = happyShift action_8
action_6 (26) = happyShift action_9
action_6 (27) = happyShift action_10
action_6 (28) = happyShift action_11
action_6 (4) = happyGoto action_31
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (6) = happyShift action_3
action_7 (7) = happyShift action_4
action_7 (8) = happyShift action_5
action_7 (14) = happyShift action_6
action_7 (20) = happyShift action_7
action_7 (23) = happyShift action_8
action_7 (26) = happyShift action_9
action_7 (27) = happyShift action_10
action_7 (28) = happyShift action_11
action_7 (4) = happyGoto action_30
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (6) = happyShift action_3
action_8 (7) = happyShift action_4
action_8 (8) = happyShift action_5
action_8 (14) = happyShift action_6
action_8 (20) = happyShift action_7
action_8 (23) = happyShift action_8
action_8 (24) = happyShift action_29
action_8 (26) = happyShift action_9
action_8 (27) = happyShift action_10
action_8 (28) = happyShift action_11
action_8 (4) = happyGoto action_27
action_8 (5) = happyGoto action_28
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_3
action_9 (7) = happyShift action_4
action_9 (8) = happyShift action_5
action_9 (14) = happyShift action_6
action_9 (20) = happyShift action_7
action_9 (23) = happyShift action_8
action_9 (26) = happyShift action_9
action_9 (27) = happyShift action_10
action_9 (28) = happyShift action_11
action_9 (4) = happyGoto action_26
action_9 _ = happyReduce_7

action_10 (6) = happyShift action_3
action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (14) = happyShift action_6
action_10 (20) = happyShift action_7
action_10 (23) = happyShift action_8
action_10 (26) = happyShift action_9
action_10 (27) = happyShift action_10
action_10 (28) = happyShift action_11
action_10 (4) = happyGoto action_25
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_3
action_11 (7) = happyShift action_4
action_11 (8) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (20) = happyShift action_7
action_11 (23) = happyShift action_8
action_11 (26) = happyShift action_9
action_11 (27) = happyShift action_10
action_11 (28) = happyShift action_11
action_11 (4) = happyGoto action_24
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_3
action_12 (7) = happyShift action_4
action_12 (8) = happyShift action_5
action_12 (9) = happyShift action_14
action_12 (10) = happyShift action_15
action_12 (11) = happyShift action_16
action_12 (12) = happyShift action_17
action_12 (13) = happyShift action_18
action_12 (14) = happyShift action_6
action_12 (15) = happyShift action_19
action_12 (16) = happyShift action_20
action_12 (17) = happyShift action_21
action_12 (18) = happyShift action_22
action_12 (19) = happyShift action_23
action_12 (20) = happyShift action_7
action_12 (23) = happyShift action_8
action_12 (26) = happyShift action_9
action_12 (27) = happyShift action_10
action_12 (28) = happyShift action_11
action_12 (29) = happyAccept
action_12 (4) = happyGoto action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_3
action_13 (7) = happyShift action_4
action_13 (8) = happyShift action_5
action_13 (9) = happyShift action_14
action_13 (10) = happyShift action_15
action_13 (11) = happyShift action_16
action_13 (12) = happyShift action_17
action_13 (13) = happyShift action_18
action_13 (14) = happyShift action_6
action_13 (15) = happyShift action_19
action_13 (16) = happyShift action_20
action_13 (17) = happyShift action_21
action_13 (18) = happyShift action_22
action_13 (19) = happyShift action_23
action_13 (20) = happyShift action_7
action_13 (23) = happyShift action_8
action_13 (26) = happyShift action_9
action_13 (27) = happyShift action_10
action_13 (28) = happyShift action_11
action_13 (4) = happyGoto action_13
action_13 _ = happyReduce_1

action_14 (6) = happyShift action_3
action_14 (7) = happyShift action_4
action_14 (8) = happyShift action_5
action_14 (14) = happyShift action_6
action_14 (20) = happyShift action_7
action_14 (23) = happyShift action_8
action_14 (26) = happyShift action_9
action_14 (27) = happyShift action_10
action_14 (28) = happyShift action_11
action_14 (4) = happyGoto action_44
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_3
action_15 (7) = happyShift action_4
action_15 (8) = happyShift action_5
action_15 (14) = happyShift action_6
action_15 (20) = happyShift action_7
action_15 (23) = happyShift action_8
action_15 (26) = happyShift action_9
action_15 (27) = happyShift action_10
action_15 (28) = happyShift action_11
action_15 (4) = happyGoto action_43
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_3
action_16 (7) = happyShift action_4
action_16 (8) = happyShift action_5
action_16 (14) = happyShift action_6
action_16 (20) = happyShift action_7
action_16 (23) = happyShift action_8
action_16 (26) = happyShift action_9
action_16 (27) = happyShift action_10
action_16 (28) = happyShift action_11
action_16 (4) = happyGoto action_42
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_3
action_17 (7) = happyShift action_4
action_17 (8) = happyShift action_5
action_17 (14) = happyShift action_6
action_17 (20) = happyShift action_7
action_17 (23) = happyShift action_8
action_17 (26) = happyShift action_9
action_17 (27) = happyShift action_10
action_17 (28) = happyShift action_11
action_17 (4) = happyGoto action_41
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_3
action_18 (7) = happyShift action_4
action_18 (8) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (20) = happyShift action_7
action_18 (23) = happyShift action_8
action_18 (26) = happyShift action_9
action_18 (27) = happyShift action_10
action_18 (28) = happyShift action_11
action_18 (4) = happyGoto action_40
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_3
action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (20) = happyShift action_7
action_19 (23) = happyShift action_8
action_19 (26) = happyShift action_9
action_19 (27) = happyShift action_10
action_19 (28) = happyShift action_11
action_19 (4) = happyGoto action_39
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_3
action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (20) = happyShift action_7
action_20 (23) = happyShift action_8
action_20 (26) = happyShift action_9
action_20 (27) = happyShift action_10
action_20 (28) = happyShift action_11
action_20 (4) = happyGoto action_38
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_3
action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (20) = happyShift action_7
action_21 (23) = happyShift action_8
action_21 (26) = happyShift action_9
action_21 (27) = happyShift action_10
action_21 (28) = happyShift action_11
action_21 (4) = happyGoto action_37
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_3
action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (14) = happyShift action_6
action_22 (20) = happyShift action_7
action_22 (23) = happyShift action_8
action_22 (26) = happyShift action_9
action_22 (27) = happyShift action_10
action_22 (28) = happyShift action_11
action_22 (4) = happyGoto action_36
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_3
action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (14) = happyShift action_6
action_23 (20) = happyShift action_7
action_23 (23) = happyShift action_8
action_23 (26) = happyShift action_9
action_23 (27) = happyShift action_10
action_23 (28) = happyShift action_11
action_23 (4) = happyGoto action_35
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_3
action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_5
action_24 (9) = happyShift action_14
action_24 (10) = happyShift action_15
action_24 (11) = happyShift action_16
action_24 (12) = happyShift action_17
action_24 (13) = happyShift action_18
action_24 (14) = happyShift action_6
action_24 (15) = happyShift action_19
action_24 (16) = happyShift action_20
action_24 (17) = happyShift action_21
action_24 (18) = happyShift action_22
action_24 (19) = happyShift action_23
action_24 (20) = happyShift action_7
action_24 (23) = happyShift action_8
action_24 (26) = happyShift action_9
action_24 (27) = happyShift action_10
action_24 (28) = happyShift action_11
action_24 (4) = happyGoto action_13
action_24 _ = happyReduce_22

action_25 (6) = happyShift action_3
action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (9) = happyShift action_14
action_25 (10) = happyShift action_15
action_25 (11) = happyShift action_16
action_25 (12) = happyShift action_17
action_25 (13) = happyShift action_18
action_25 (14) = happyShift action_6
action_25 (15) = happyShift action_19
action_25 (16) = happyShift action_20
action_25 (17) = happyShift action_21
action_25 (18) = happyShift action_22
action_25 (19) = happyShift action_23
action_25 (20) = happyShift action_7
action_25 (23) = happyShift action_8
action_25 (26) = happyShift action_9
action_25 (27) = happyShift action_10
action_25 (28) = happyShift action_11
action_25 (4) = happyGoto action_13
action_25 _ = happyReduce_21

action_26 (6) = happyShift action_3
action_26 (7) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (9) = happyShift action_14
action_26 (10) = happyShift action_15
action_26 (11) = happyShift action_16
action_26 (12) = happyShift action_17
action_26 (13) = happyShift action_18
action_26 (14) = happyShift action_6
action_26 (15) = happyShift action_19
action_26 (16) = happyShift action_20
action_26 (17) = happyShift action_21
action_26 (18) = happyShift action_22
action_26 (19) = happyShift action_23
action_26 (20) = happyShift action_7
action_26 (23) = happyShift action_8
action_26 (26) = happyShift action_9
action_26 (27) = happyShift action_10
action_26 (28) = happyShift action_11
action_26 (4) = happyGoto action_13
action_26 _ = happyReduce_8

action_27 (6) = happyShift action_3
action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (9) = happyShift action_14
action_27 (10) = happyShift action_15
action_27 (11) = happyShift action_16
action_27 (12) = happyShift action_17
action_27 (13) = happyShift action_18
action_27 (14) = happyShift action_6
action_27 (15) = happyShift action_19
action_27 (16) = happyShift action_20
action_27 (17) = happyShift action_21
action_27 (18) = happyShift action_22
action_27 (19) = happyShift action_23
action_27 (20) = happyShift action_7
action_27 (23) = happyShift action_8
action_27 (25) = happyShift action_34
action_27 (26) = happyShift action_9
action_27 (27) = happyShift action_10
action_27 (28) = happyShift action_11
action_27 (4) = happyGoto action_13
action_27 _ = happyReduce_23

action_28 (24) = happyShift action_33
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_2

action_30 (6) = happyShift action_3
action_30 (7) = happyShift action_4
action_30 (8) = happyShift action_5
action_30 (9) = happyShift action_14
action_30 (10) = happyShift action_15
action_30 (11) = happyShift action_16
action_30 (12) = happyShift action_17
action_30 (13) = happyShift action_18
action_30 (14) = happyShift action_6
action_30 (15) = happyShift action_19
action_30 (16) = happyShift action_20
action_30 (17) = happyShift action_21
action_30 (18) = happyShift action_22
action_30 (19) = happyShift action_23
action_30 (20) = happyShift action_7
action_30 (21) = happyShift action_32
action_30 (23) = happyShift action_8
action_30 (26) = happyShift action_9
action_30 (27) = happyShift action_10
action_30 (28) = happyShift action_11
action_30 (4) = happyGoto action_13
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_3
action_31 (7) = happyShift action_4
action_31 (8) = happyShift action_5
action_31 (14) = happyShift action_6
action_31 (23) = happyShift action_8
action_31 (26) = happyShift action_9
action_31 (27) = happyShift action_10
action_31 (28) = happyShift action_11
action_31 (4) = happyGoto action_13
action_31 _ = happyReduce_14

action_32 (6) = happyShift action_3
action_32 (7) = happyShift action_4
action_32 (8) = happyShift action_5
action_32 (14) = happyShift action_6
action_32 (20) = happyShift action_7
action_32 (23) = happyShift action_8
action_32 (26) = happyShift action_9
action_32 (27) = happyShift action_10
action_32 (28) = happyShift action_11
action_32 (4) = happyGoto action_46
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_3

action_34 (6) = happyShift action_3
action_34 (7) = happyShift action_4
action_34 (8) = happyShift action_5
action_34 (14) = happyShift action_6
action_34 (20) = happyShift action_7
action_34 (23) = happyShift action_8
action_34 (26) = happyShift action_9
action_34 (27) = happyShift action_10
action_34 (28) = happyShift action_11
action_34 (4) = happyGoto action_27
action_34 (5) = happyGoto action_45
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (6) = happyShift action_3
action_35 (7) = happyShift action_4
action_35 (8) = happyShift action_5
action_35 (9) = happyShift action_14
action_35 (10) = happyShift action_15
action_35 (11) = happyShift action_16
action_35 (14) = happyShift action_6
action_35 (23) = happyShift action_8
action_35 (26) = happyShift action_9
action_35 (27) = happyShift action_10
action_35 (28) = happyShift action_11
action_35 (4) = happyGoto action_13
action_35 _ = happyReduce_19

action_36 (6) = happyShift action_3
action_36 (7) = happyShift action_4
action_36 (8) = happyShift action_5
action_36 (9) = happyShift action_14
action_36 (10) = happyShift action_15
action_36 (11) = happyShift action_16
action_36 (14) = happyShift action_6
action_36 (23) = happyShift action_8
action_36 (26) = happyShift action_9
action_36 (27) = happyShift action_10
action_36 (28) = happyShift action_11
action_36 (4) = happyGoto action_13
action_36 _ = happyReduce_18

action_37 (6) = happyShift action_3
action_37 (7) = happyShift action_4
action_37 (8) = happyShift action_5
action_37 (9) = happyShift action_14
action_37 (10) = happyShift action_15
action_37 (11) = happyShift action_16
action_37 (14) = happyShift action_6
action_37 (23) = happyShift action_8
action_37 (26) = happyShift action_9
action_37 (27) = happyShift action_10
action_37 (28) = happyShift action_11
action_37 (4) = happyGoto action_13
action_37 _ = happyReduce_17

action_38 (6) = happyShift action_3
action_38 (7) = happyShift action_4
action_38 (8) = happyShift action_5
action_38 (9) = happyShift action_14
action_38 (10) = happyShift action_15
action_38 (11) = happyShift action_16
action_38 (14) = happyShift action_6
action_38 (23) = happyShift action_8
action_38 (26) = happyShift action_9
action_38 (27) = happyShift action_10
action_38 (28) = happyShift action_11
action_38 (4) = happyGoto action_13
action_38 _ = happyReduce_16

action_39 (6) = happyShift action_3
action_39 (7) = happyShift action_4
action_39 (8) = happyShift action_5
action_39 (9) = happyShift action_14
action_39 (10) = happyShift action_15
action_39 (11) = happyShift action_16
action_39 (14) = happyShift action_6
action_39 (23) = happyShift action_8
action_39 (26) = happyShift action_9
action_39 (27) = happyShift action_10
action_39 (28) = happyShift action_11
action_39 (4) = happyGoto action_13
action_39 _ = happyReduce_15

action_40 (6) = happyShift action_3
action_40 (7) = happyShift action_4
action_40 (8) = happyShift action_5
action_40 (9) = happyShift action_14
action_40 (10) = happyShift action_15
action_40 (11) = happyShift action_16
action_40 (12) = happyShift action_17
action_40 (14) = happyShift action_6
action_40 (15) = happyShift action_19
action_40 (16) = happyShift action_20
action_40 (17) = happyShift action_21
action_40 (18) = happyShift action_22
action_40 (19) = happyShift action_23
action_40 (23) = happyShift action_8
action_40 (26) = happyShift action_9
action_40 (27) = happyShift action_10
action_40 (28) = happyShift action_11
action_40 (4) = happyGoto action_13
action_40 _ = happyReduce_13

action_41 (6) = happyShift action_3
action_41 (7) = happyShift action_4
action_41 (8) = happyShift action_5
action_41 (9) = happyShift action_14
action_41 (10) = happyShift action_15
action_41 (11) = happyShift action_16
action_41 (14) = happyShift action_6
action_41 (15) = happyShift action_19
action_41 (16) = happyShift action_20
action_41 (17) = happyShift action_21
action_41 (18) = happyShift action_22
action_41 (19) = happyShift action_23
action_41 (23) = happyShift action_8
action_41 (26) = happyShift action_9
action_41 (27) = happyShift action_10
action_41 (28) = happyShift action_11
action_41 (4) = happyGoto action_13
action_41 _ = happyReduce_12

action_42 (6) = happyShift action_3
action_42 (7) = happyShift action_4
action_42 (8) = happyShift action_5
action_42 (14) = happyShift action_6
action_42 (23) = happyShift action_8
action_42 (26) = happyShift action_9
action_42 (27) = happyShift action_10
action_42 (28) = happyShift action_11
action_42 (4) = happyGoto action_13
action_42 _ = happyReduce_11

action_43 (6) = happyShift action_3
action_43 (7) = happyShift action_4
action_43 (8) = happyShift action_5
action_43 (11) = happyShift action_16
action_43 (14) = happyShift action_6
action_43 (23) = happyShift action_8
action_43 (26) = happyShift action_9
action_43 (27) = happyShift action_10
action_43 (28) = happyShift action_11
action_43 (4) = happyGoto action_13
action_43 _ = happyReduce_10

action_44 (6) = happyShift action_3
action_44 (7) = happyShift action_4
action_44 (8) = happyShift action_5
action_44 (11) = happyShift action_16
action_44 (14) = happyShift action_6
action_44 (23) = happyShift action_8
action_44 (26) = happyShift action_9
action_44 (27) = happyShift action_10
action_44 (28) = happyShift action_11
action_44 (4) = happyGoto action_13
action_44 _ = happyReduce_9

action_45 _ = happyReduce_24

action_46 (6) = happyShift action_3
action_46 (7) = happyShift action_4
action_46 (8) = happyShift action_5
action_46 (9) = happyShift action_14
action_46 (10) = happyShift action_15
action_46 (11) = happyShift action_16
action_46 (12) = happyShift action_17
action_46 (13) = happyShift action_18
action_46 (14) = happyShift action_6
action_46 (15) = happyShift action_19
action_46 (16) = happyShift action_20
action_46 (17) = happyShift action_21
action_46 (18) = happyShift action_22
action_46 (19) = happyShift action_23
action_46 (20) = happyShift action_7
action_46 (22) = happyShift action_47
action_46 (23) = happyShift action_8
action_46 (26) = happyShift action_9
action_46 (27) = happyShift action_10
action_46 (28) = happyShift action_11
action_46 (4) = happyGoto action_13
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (6) = happyShift action_3
action_47 (7) = happyShift action_4
action_47 (8) = happyShift action_5
action_47 (14) = happyShift action_6
action_47 (20) = happyShift action_7
action_47 (23) = happyShift action_8
action_47 (26) = happyShift action_9
action_47 (27) = happyShift action_10
action_47 (28) = happyShift action_11
action_47 (4) = happyGoto action_48
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (6) = happyShift action_3
action_48 (7) = happyShift action_4
action_48 (8) = happyShift action_5
action_48 (9) = happyShift action_14
action_48 (10) = happyShift action_15
action_48 (11) = happyShift action_16
action_48 (12) = happyShift action_17
action_48 (13) = happyShift action_18
action_48 (14) = happyShift action_6
action_48 (15) = happyShift action_19
action_48 (16) = happyShift action_20
action_48 (17) = happyShift action_21
action_48 (18) = happyShift action_22
action_48 (19) = happyShift action_23
action_48 (20) = happyFail []
action_48 (23) = happyShift action_8
action_48 (26) = happyShift action_9
action_48 (27) = happyShift action_10
action_48 (28) = happyShift action_11
action_48 (4) = happyGoto action_13
action_48 _ = happyReduce_20

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
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_21 = happySpecReduce_2  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Head happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tail happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 29 29 notHappyAtAll (HappyState action) sts stk []

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
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 29 tk tks = happyError' (tks, explist)
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
