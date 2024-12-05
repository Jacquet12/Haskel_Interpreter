module Lexer where 

import Data.Char

data Expr = BTrue 
          | BFalse 
          | Num Int 
          | Add Expr Expr 
          | Sub Expr Expr
          | Mul Expr Expr
          | And Expr Expr 
          | Or Expr Expr
          | Not Expr
          | Eq Expr Expr
          | Geq Expr Expr
          | Leq Expr Expr
          | Gt Expr Expr
          | Lt Expr Expr
          | If Expr Expr Expr 
          | Var String 
          | Lam String Ty Expr
          | App Expr Expr
          | List [Expr]
          | Head Expr
          | Tail Expr
          deriving (Show, Eq)

data Ty = TBool 
        | TNum 
        | TFun Ty Ty 
        | TList Ty 
        deriving (Show, Eq)

data Token = TokenTrue
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd 
           | TokenSub
           | TokenMul
           | TokenAnd 
           | TokenOr
           | TokenNot
           | TokenEq
           | TokenGeq
           | TokenLeq
           | TokenGt
           | TokenLt
           | TokenIf
           | TokenThen
           | TokenElse
           | TokenLBracket  -- [
           | TokenRBracket  -- ]
           | TokenComma     -- ,
           | TokenVar String
           | TokenLam 
           | TokenArrow 
           | TokenHead 
           | TokenTail 
           | TokenError String
           deriving Show

lexer :: String -> [Token]
lexer [] = [] 
lexer ('+':cs) = TokenAdd : lexer cs
lexer ('*':cs) = TokenMul : lexer cs 
lexer ('\\':cs) = TokenLam : lexer cs  -- Token para o lambda
lexer ('=':'=':cs) = TokenEq : lexer cs 
lexer ('-':'>':cs) = TokenArrow : lexer cs  -- Token para "->"
lexer ('-':cs) = TokenSub : lexer cs
lexer ('>':'=':cs) = TokenGeq : lexer cs
lexer ('<':'=':cs) = TokenLeq : lexer cs
lexer ('<':cs) = TokenLt : lexer cs
lexer ('>':cs) = TokenGt : lexer cs
lexer ('[':cs) = TokenLBracket : lexer cs
lexer (']':cs) = TokenRBracket : lexer cs
lexer (',':cs) = TokenComma : lexer cs
lexer (c:cs) 
   | isSpace c = lexer cs 
   | isAlpha c = lexerKW (c:cs) 
   | isDigit c = lexerNum (c:cs)

lexerNum :: String -> [Token]
lexerNum cs = case span isDigit cs of 
                (num, rest) -> TokenNum (read num) : lexer rest

lexerKW :: String -> [Token]
lexerKW cs = case span isAlpha cs of 
               ("true", rest) -> TokenTrue : lexer rest 
               ("false", rest) -> TokenFalse : lexer rest 
               ("and", rest) -> TokenAnd : lexer rest
               ("not", rest) -> TokenNot : lexer rest
               ("or", rest) -> TokenOr : lexer rest
               ("if", rest) -> TokenIf : lexer rest 
               ("then", rest) -> TokenThen : lexer rest 
               ("else", rest) -> TokenElse : lexer rest 
               ("head", rest) -> TokenHead : lexer rest
               ("tail", rest) -> TokenTail : lexer rest 
               (var, rest) -> TokenVar var : lexer rest
