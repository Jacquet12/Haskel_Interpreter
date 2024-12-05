from fpdf import FPDF

# Criar o PDF
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=15)
pdf.add_page()
pdf.set_font("Arial", size=12)

# Título
pdf.set_font("Arial", style="B", size=16)
pdf.cell(0, 10, "Casos de Teste para Lexer, Parser e Eval", ln=True, align="C")
pdf.ln(10)

# Testes para incluir no PDF
tests = [
    ("1. Teste para a Operação de Subtração (-)",
     "Entrada: lexer \"5 - 3\"\n"
     "Tokens Esperados: [TokenNum 5, TokenSub, TokenNum 3]\n"
     "Parser: parser (lexer \"5 - 3\")\n"
     "Árvore Sintática Esperada: Sub (Num 5) (Num 3)\n"
     "Eval: eval (Sub (Num 5) (Num 3))\n"
     "Resultado Esperado: 2"),

    ("2. Teste para a Operação de Adição (+)",
     "Entrada: lexer \"1 + 2\"\n"
     "Tokens Esperados: [TokenNum 1, TokenAdd, TokenNum 2]\n"
     "Parser: parser (lexer \"1 + 2\")\n"
     "Árvore Sintática Esperada: Add (Num 1) (Num 2)\n"
     "Eval: eval (Add (Num 1) (Num 2))\n"
     "Resultado Esperado: 3"),

    ("3. Teste para a Operação Lógica OR",
     "Entrada: lexer \"true or false\"\n"
     "Tokens Esperados: [TokenTrue, TokenOr, TokenFalse]\n"
     "Parser: parser (lexer \"true or false\")\n"
     "Árvore Sintática Esperada: Or BTrue BFalse\n"
     "Eval: eval (Or BTrue BFalse)\n"
     "Resultado Esperado: True"),

    ("4. Teste para a Operação Lógica NOT",
     "Entrada: lexer \"not true\"\n"
     "Tokens Esperados: [TokenNot, TokenTrue]\n"
     "Parser: parser (lexer \"not true\")\n"
     "Árvore Sintática Esperada: Not BTrue\n"
     "Eval: eval (Not BTrue)\n"
     "Resultado Esperado: False"),

    ("5. Teste para Lista Vazia",
     "Entrada: lexer \"[]\"\n"
     "Tokens Esperados: [TokenLBracket, TokenRBracket]\n"
     "Parser: parser (lexer \"[]\")\n"
     "Árvore Sintática Esperada: List []\n"
     "Eval: eval (List [])\n"
     "Resultado Esperado: []"),

    ("6. Teste para Lista com um Elemento",
     "Entrada: lexer \"[1]\"\n"
     "Tokens Esperados: [TokenLBracket, TokenNum 1, TokenRBracket]\n"
     "Parser: parser (lexer \"[1]\")\n"
     "Árvore Sintática Esperada: List [Num 1]\n"
     "Eval: eval (List [Num 1])\n"
     "Resultado Esperado: [1]"),

    ("7. Teste para Somar Duas Listas",
     "Entrada: lexer \"[1] + [2]\"\n"
     "Tokens Esperados: [TokenLBracket, TokenNum 1, TokenRBracket, TokenAdd, TokenLBracket, TokenNum 2, TokenRBracket]\n"
     "Parser: parser (lexer \"[1] + [2]\")\n"
     "Árvore Sintática Esperada: Add (List [Num 1]) (List [Num 2])\n"
     "Eval: eval (Add (List [Num 1]) (List [Num 2]))\n"
     "Resultado Esperado: [1, 2]"),

    ("8. Teste para Pegar o Cabeçalho da Lista",
     "Entrada: lexer \"head [1, 2, 3]\"\n"
     "Tokens Esperados: [TokenVar \"head\", TokenLBracket, TokenNum 1, TokenComma, TokenNum 2, TokenComma, TokenNum 3, TokenRBracket]\n"
     "Parser: parser (lexer \"head [1, 2, 3]\")\n"
     "Árvore Sintática Esperada: App (Var \"head\") (List [Num 1, Num 2, Num 3])\n"
     "Eval: eval (App (Var \"head\") (List [Num 1, Num 2, Num 3]))\n"
     "Resultado Esperado: 1"),

    ("9. Teste para Pegar o Tail da Lista",
     "Entrada: lexer \"tail [1, 2, 3]\"\n"
     "Tokens Esperados: [TokenVar \"tail\", TokenLBracket, TokenNum 1, TokenComma, TokenNum 2, TokenComma, TokenNum 3, TokenRBracket]\n"
     "Parser: parser (lexer \"tail [1, 2, 3]\")\n"
     "Árvore Sintática Esperada: App (Var \"tail\") (List [Num 1, Num 2, Num 3])\n"
     "Eval: eval (App (Var \"tail\") (List [Num 1, Num 2, Num 3]))\n"
     "Resultado Esperado: [2, 3]")
]

# Adicionando os testes no PDF
for title, content in tests:
    pdf.set_font("Arial", style="B", size=12)
    pdf.cell(0, 10, title, ln=True)
    pdf.set_font("Arial", size=12)
    pdf.multi_cell(0, 10, content)
    pdf.ln(10)

# Salvar o PDF
pdf.output("testes_interpreter.pdf")
