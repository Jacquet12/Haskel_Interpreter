module TypeChecker where 

import Lexer 

type Ctx = [(String, Ty)]

-- Tipo de uma expressão
typeof :: Ctx -> Expr -> Maybe Ty 
typeof _ (Num _) = Just TNum 
typeof _ BTrue = Just TBool
typeof _ BFalse = Just TBool

-- Soma
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TNum, Just TNum) -> Just TNum
                           (Just (TList TNum), Just (TList TNum)) -> Just (TList TNum)
                           _ -> Nothing
-- Subtração
typeof ctx (Sub e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TNum, Just TNum) -> Just TNum
                           _ -> Nothing 

-- Multiplicação
typeof ctx (Mul e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TNum, Just TNum) -> Just TNum
                           _ -> Nothing

-- And e Or
typeof ctx (And e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TBool, Just TBool) -> Just TBool
                           _ -> Nothing

typeof ctx (Or e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just TBool, Just TBool) -> Just TBool
                          _ -> Nothing

-- Not
typeof ctx (Not e) = case typeof ctx e of
                       Just TBool -> Just TBool
                       _ -> Nothing

-- Igualdade
typeof ctx (Eq e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just t1, Just t2) | t1 == t2 -> Just TBool 
                                             | otherwise -> Nothing 
                          _ -> Nothing

-- Comparações numéricas
typeof ctx (Geq e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                           (Just TNum, Just TNum) -> Just TBool
                           _ -> Nothing

typeof ctx (Leq e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                           (Just TNum, Just TNum) -> Just TBool
                           _ -> Nothing

typeof ctx (Gt e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                          (Just TNum, Just TNum) -> Just TBool
                          _ -> Nothing

typeof ctx (Lt e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                          (Just TNum, Just TNum) -> Just TBool
                          _ -> Nothing

-- Condicional
typeof ctx (If e e1 e2) = case typeof ctx e of 
                            Just TBool -> case (typeof ctx e1, typeof ctx e2) of 
                                            (Just t1, Just t2) | t1 == t2 -> Just t1 
                                                               | otherwise -> Nothing
                                            _ -> Nothing
                            _ -> Nothing

-- Variáveis
typeof ctx (Var v) = lookup v ctx 

-- Funções e Aplicações
typeof ctx (Lam v t1 b) = case typeof ((v, t1) : ctx) b of
                            Just t2 -> Just (TFun t1 t2)
                            _ -> Nothing

typeof ctx (App e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just (TFun t11 t12), Just t2) | t11 == t2 -> Just t12 
                                                          | otherwise -> Nothing 
                           _ -> Nothing

-- Listas
typeof ctx (List []) = Just (TList TNum) -- Listas vazias são listas de números por padrão
typeof ctx (List (x:xs)) = case typeof ctx x of
                             Just t -> if all (\e -> typeof ctx e == Just t) xs
                                       then Just (TList t)
                                       else Nothing
                             _ -> Nothing

-- Verificação de tipos
typecheck :: Expr -> Expr 
typecheck e = case typeof [] e of 
                (Just _) -> e 
                _        -> error ("Erro verificando tipo da expressão: " ++ show e)
