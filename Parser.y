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

%nonassoc if then else
%left or
%left and
%left "==" ">=" "<=" '>' '<'
%left '+' '-'
%left '*' 
%right not
%left ','

%%

Exp : Exp Exp                        { App $1 $2 }               -- Aplicação de função
    | '[' ']'                        { List [] }                 -- Lista vazia
    | '[' ExpList ']'                { List $2 }                 -- Lista com elementos
    | true                           { BTrue }                   -- Valor booleano "true"
    | false                          { BFalse }                  -- Valor booleano "false"
    | num                            { Num $1 }                  -- Número
    | var                            { Var $1 }                  -- Variável
    | var Exp                        { App (Var $1) $2 }         -- Aplicação de variável
    | Exp '+' Exp                    { Add $1 $3 }               -- Soma
    | Exp '-' Exp                    { Sub $1 $3 }               -- Subtração
    | Exp '*' Exp                    { Mul $1 $3 }               -- Multiplicação
    | Exp and Exp                    { And $1 $3 }               -- Conjunção lógica (and)
    | Exp or Exp                     { Or $1 $3 }                -- Disjunção lógica (or)
    | not Exp                        { Not $2 }                  -- Negação lógica (not)
    | Exp "==" Exp                   { Eq $1 $3 }                -- Igualdade
    | Exp ">=" Exp                   { Geq $1 $3 }               -- Maior ou igual
    | Exp "<=" Exp                   { Leq $1 $3 }               -- Menor ou igual
    | Exp '>' Exp                    { Gt $1 $3 }                -- Maior
    | Exp '<' Exp                    { Lt $1 $3 }                -- Menor
    | if Exp then Exp else Exp       { If $2 $4 $6 }             -- Estrutura condicional (if-then-else)
    | head Exp                       { Head $2 }                 -- Função head
    | tail Exp                       { Tail $2 }                 -- Função tail

ExpList : Exp                         { [$1] }                   -- Lista com um único elemento
        | Exp ',' ExpList             { $1 : $3 }                -- Lista com mais de um elemento

{
  parseError :: [Token] -> a
  parseError ts = error ("Syntax error: sequência de instruções inválidas. Tokens: " ++ show ts)
}
