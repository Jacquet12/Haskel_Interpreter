{
  module Parser where 

  import Lexer
}

%name parser 
%tokentype { Token }
%error { parseError } 

%token 
  true          { TokenTrue }
  false         { TokenFalse }
  num           { TokenNum $$ }
  '+'           { TokenAdd }
  '-'           { TokenSub }
  '*'           { TokenMul }
  and           { TokenAnd }
  or            { TokenOr }
  not           { TokenNot }
  "=="          { TokenEq }
  ">="          { TokenGeq }
  "<="          { TokenLeq }
  '>'           { TokenGt }
  '<'           { TokenLt }
  if            { TokenIf }
  then          { TokenThen }
  else          { TokenElse }
  '['           { TokenLBracket }
  ']'           { TokenRBracket }
  ','           { TokenComma }
  var           { TokenVar $$ }
  head          { TokenHead } 
  tail          { TokenTail }
  '\\'          { TokenLam }
  "->"          { TokenArrow }

%nonassoc if then else
%left or
%left and
%left "==" ">=" "<=" '>' '<'
%left '+' '-'
%left '*'
%right not

%% 

Exp : '[' ']'                     { List [] }
    | '['ExpList']'               { List $2 }
    | true                        { BTrue }
    | false                       { BFalse }
    | num                         { Num $1 }
    | var                         { Var $1 }
    | var Exp                     { App (Var $1) $2 }
    | Exp '+' Exp                 { Add $1 $3 }
    | Exp '-' Exp                 { Sub $1 $3 }
    | Exp '*' Exp                 { Mul $1 $3 }
    | Exp and Exp                 { And $1 $3 }
    | Exp or Exp                  { Or $1 $3 }
    | not Exp                     { Not $2 }
    | Exp "==" Exp                { Eq $1 $3 }
    | Exp ">=" Exp                { Geq $1 $3 }
    | Exp "<=" Exp                { Leq $1 $3 }
    | Exp '>' Exp                 { Gt $1 $3 }
    | Exp '<' Exp                 { Lt $1 $3 }
    | if Exp then Exp else Exp    { If $2 $4 $6 }
    | head Exp                    { Head $2 }
    | tail Exp                    { Tail $2 } 
    | '\\' var "->" Exp           { Lam $2 Nothing $4 }
    | Exp Exp                     { App $1 $2 }
    

ExpList : Exp                 { [$1] }
        | Exp ',' ExpList     { $1 : $3 }

{
  parseError :: [Token] -> a 
  parseError ts = error "Syntax error: sequência de instruções inválidas."
}