module Interpreter where 

import Lexer 

isValue :: Expr -> Bool
isValue BTrue = True 
isValue BFalse = True 
isValue (Num _) = True 
isValue (Lam _ _ _) = True
isValue _ = False 

-- Função: subst
-- Parâmetros: Variável (Parâmetro formal), 
--             Expressão (Parâmetro atual), 
--             Corpo da função
-- Retorno: Corpo da função substituído
---------------------------------------------------       
subst :: String -> Expr -> Expr -> Expr
subst x n b@(Var v) = if v == x then 
                        n 
                      else 
                        b 
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2)
subst x n (Mul e1 e2) = Mul (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)
subst x n (Not e) = Not (subst x n e)
subst x n (Eq e1 e2) = Eq (subst x n e1) (subst x n e2)
subst x n (Geq e1 e2) = Geq (subst x n e1) (subst x n e2)
subst x n (Leq e1 e2) = Leq (subst x n e1) (subst x n e2)
subst x n (Gt e1 e2) = Gt (subst x n e1) (subst x n e2)
subst x n (Lt e1 e2) = Lt (subst x n e1) (subst x n e2)
subst x n (If e e1 e2) = If (subst x n e) (subst x n e1) (subst x n e2)
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst _ _ e = e

step :: Expr -> Expr 
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num nv) e2) = Add (Num nv) (step e2) 
step (Add e1 e2) = Add (step e1) e2

step (Sub (Num n1) (Num n2)) = Num (n1 - n2)
step (Sub (Num nv) e2) = Sub (Num nv) (step e2)
step (Sub e1 e2) = Sub (step e1) e2 

step (Mul (Num n1) (Num n2)) = Num (n1 * n2)
step (Mul (Num nv) e2) = Mul (Num nv) (step e2)
step (Mul e1 e2) = Mul (step e1) e2

step (And BFalse _) = BFalse 
step (And BTrue e) = e 
step (And e1 e2) = And (step e1) e2 

step (Or BTrue _) = BTrue
step (Or BFalse e) = e
step (Or e1 e2) = Or (step e1) e2

step (Not BTrue) = BFalse
step (Not BFalse) = BTrue
step (Not e) = Not (step e)

step (Eq e1 e2) 
  | isValue e1 && isValue e2 = if (e1 == e2) then BTrue else BFalse
  | isValue e1 = Eq e1 (step e2)
  | otherwise = Eq (step e1) e2

step (Geq (Num n1) (Num n2)) = if n1 >= n2 then BTrue else BFalse
step (Geq e1 e2) 
  | isValue e1 = Geq e1 (step e2)
  | otherwise = Geq (step e1) e2

step (Leq (Num n1) (Num n2)) = if n1 <= n2 then BTrue else BFalse
step (Leq e1 e2) 
  | isValue e1 = Leq e1 (step e2)
  | otherwise = Leq (step e1) e2

step (Gt (Num n1) (Num n2)) = if n1 > n2 then BTrue else BFalse
step (Gt e1 e2) 
  | isValue e1 = Gt e1 (step e2)
  | otherwise = Gt (step e1) e2

step (Lt (Num n1) (Num n2)) = if n1 < n2 then BTrue else BFalse
step (Lt e1 e2) 
  | isValue e1 = Lt e1 (step e2)
  | otherwise = Lt (step e1) e2

step (If BTrue e1 _) = e1 
step (If BFalse _ e2) = e2 
step (If e e1 e2) = If (step e) e1 e2 

step (App (Lam v t b) e) 
  | isValue e = subst v e b 
  | otherwise = App (Lam v t b) (step e)

step (App e1 e2) = App (step e1) e2 

step e = e

eval :: Expr -> Expr 
eval e 
  | isValue e = e 
  | otherwise = eval (step e)

extractValue :: Expr -> Int
extractValue (Num n) = n
extractValue _       = error "Resultado não é um valor numérico simples!"